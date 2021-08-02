Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBCA13DCF26
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 06:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbhHBEM7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 00:12:59 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:37308 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbhHBEM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 00:12:59 -0400
X-Greylist: delayed 465 seconds by postgrey-1.27 at vger.kernel.org; Mon, 02 Aug 2021 00:12:58 EDT
Received: by codeconstruct.com.au (Postfix, from userid 10001)
        id 0A3D720272; Mon,  2 Aug 2021 12:05:02 +0800 (AWST)
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     devicetree@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: [RFC PATCH 0/2] MCTP I2C devicetree binding
Date:   Mon,  2 Aug 2021 12:04:56 +0800
Message-Id: <20210802040458.334732-1-matt@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

These patches are an RFC for a devicetree binding for MCTP-over-I2C
hardware, where MCTP messages are transferred as SMBus block writes. For
this, we need to encode a little dt data about the hardware
configuration, specifically:

 1) which controllers are MCTP endpoints (ie, may host MCTP I2C clients
    downstream); and
 2) the SMBus address of the local MCTP endpoint, which can act as an
    I2C slave device

In order to represent this configuration, we've added a binding for a
node that will exist under a root-level i2c controller. This indicates
(1), and provides the address required for (2). For a fictional hardware
i2c controller:

    /* for I2C_OWN_SLAVE_ADDRESS */
    #include <dt-bindings/i2c/i2c.h>

    /* root-level i2c controller */
    i2c {
        compatible = "vendor,example-i2c-controller";
        reg = <...>
        #address-cells = <1>;
        #size-cells = <0>;

        mctp@50 {
            compatible = "mctp-i2c";
            reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
        };
    };

This gets a little trickier when i2c muxes are present between the
top-level controller and MCTP endpoints, as we need to specify the
downstream mux ports that may host MCTP endpoints (which allows an OS
implementation to correctly address devices which require a specific mux
state to be configured). For this, we introduce the bus-attach property
on the root-level node, which indicates subordinate i2c busses that may
host MCTP endpoints:

     i2c5: i2cbus5 {
         #address-cells = <1>;
         #size-cells = <0>;
 
         mctp@50 {
             compatible = "mctp-i2c";
             reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
             /* MCTP endpoints behind this controller and the mux port at i2c14 */
             attach-bus = <&i2c5 &i2c14>;
         };
     };
 
     i2cmux0 {
       compatible = "i2c-mux-gpio";
       #address-cells = <1>;
       #size-cells = <0>;
       i2c-parent = <&i2c5>;
       i2c14: i2c@5 {
         reg = <0>;
       };
     };

- where an absent attach-bus property implies that only the top-level
controller will host MCTP devices.

An operating system consuming these nodes may want to create a MCTP
interface device for each of the mux ports in the topology.

An alternative approach we considered: A pure property-based spec could
represent the MCTP capability of an i2c controller through top-level
properties instead:

    i2c {
        compatible = "mctp-i2c-controller", "vendor,example-i2c-controller";
        reg = <...>
        #address-cells = <1>;
        #size-cells = <0>;

        /* presence required by the 'mctp-i2c-controller' binding */
        mctp-i2c-address = <0x50>;
    };

(like the above, the i2c controller here will both be available for
standard i2c transactions as well as MCTP messaging)

and downstream MCTP-capable busses indicated with a boolean property:

    i2cmux0 {
      compatible = "i2c-mux-gpio";
      #address-cells = <1>;
      #size-cells = <0>;
      i2c-parent = <&i2c5>;

      i2c@5 {
          /* indicates that this subordinate bus hosts MCTP endpoints */
          mctp-i2c-controller;
      };
    };

However, this doesn't quite fit with the existing i2c client bindings
(using I2C_OWN_SLAVE_ADDRESS), which uses a distinct node for the
local client endpoint. So, we have decided on the node-base approach.

Cheers,
Matt

Matt Johnston (2):
  dt-bindings: net: New binding for mctp-i2c
  dt-bindings: net: Add mctp-i2c bus-attach property

 .../devicetree/bindings/net/mctp-i2c.yaml     | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mctp-i2c.yaml

-- 
2.30.2

