Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13A673E88F3
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 05:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233066AbhHKDoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 23:44:17 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:40232 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232772AbhHKDoR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 23:44:17 -0400
Received: by codeconstruct.com.au (Postfix, from userid 10001)
        id CDCFB20136; Wed, 11 Aug 2021 11:43:52 +0800 (AWST)
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     devicetree@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: [RFC PATCH v2 0/2] MCTP I2C devicetree binding
Date:   Wed, 11 Aug 2021 11:43:43 +0800
Message-Id: <20210811034345.2424442-1-matt@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

These patches are a v2 RFC for a devicetree binding of MCTP-over-I2C
hardware, where MCTP messages are transferred as SMBus block writes.

Since v1 I've revised the description and commits to hopefully be
clearer, and renamed the binding to indicate that it's generic for any
I2C hardware. That should allow for any later device specific drivers -
please let me know if I'm misunderstanding how it should be changed.

Cheers,
Matt

v2:

- Rename to mctp-i2c-generic rather than mctp-i2c
- Fix mux example to be correct and pass checks
- Set additionalProperties: false
- Commit message of patch 2/2 revised for clarity
- The I2C_OWN_SLAVE_ADDRESS flag is mentioned in reference to
  i2c.txt where it is defined.

Matt Johnston (2):
  dt-bindings: net: New binding for mctp-i2c-generic
  dt-bindings: net: mctp-i2c-generic: support muxes

 .../bindings/net/mctp-i2c-generic.yaml        | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml

-- 
2.30.2

