Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 056F0287280
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 12:28:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729322AbgJHK2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 06:28:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729221AbgJHK2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 06:28:47 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 997A9C061755
        for <devicetree@vger.kernel.org>; Thu,  8 Oct 2020 03:28:47 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 0F11129D04B
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     robh@kernel.org
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com
Subject: [PATCH v2 0/3] Fix checker warnings related to cros-ec binding
Date:   Thu,  8 Oct 2020 12:28:22 +0200
Message-Id: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series fixes a bunch of warnings related to the google,cros-ec
binding, originally reported by Rob Herring.
The patches involve adding missing subnode definitions in the
google,cros-ec binding and the conversion of two existing bindings to
json-schema.

All the related warnings should be fixed after applying the patches,
except for a couple of warnings in the device trees of Qualcomm's
Trogdor and Cheza chromebooks. They define a pdupdate subnode inside
cros-ec that has no binding, the development of drivers and support for
these chromebooks is ongoing and not completely upstreamed yet.

Bindings tested with:

  make dt_binding_check ARCH=<arch> DT_SCHEMA_FILES=...
  make dtbs_check ARCH=<arch> DT_SCHEMA_FILES=...

for <arch> = arm and arm64.

Changes from v1:

  - Update google,cros-ec.yaml in patches 1 and 2 to avoid checker
    warnings when applied individually.

  - Complete the examples in google,cros-ec-i2c-tunnel.yaml and
    google,cros-ec-keyb.yaml, including the enclosing nodes (Enric).

  - Include the additional properties from matrix-keymap.yaml in
    google,cros-ec-keyb.yaml and use additionalProperties: false
    (Enric).

  - Use an intermediate "codecs" node in google,cros-ec.yaml to enclose
    the ec-codec nodes, which require different #address-cells and
    #size-cells values (Rob).

  - Update the example in google,cros-ec-codec.yaml to reflect the
    change in google,cros-ec.yaml

Kind regards,
Ricardo

Ricardo Cañuelo (3):
  dt-bindings: i2c: convert i2c-cros-ec-tunnel to json-schema
  dt-bindings: input: convert cros-ec-keyb to json-schema
  mfd: google,cros-ec: add missing properties

 .../i2c/google,cros-ec-i2c-tunnel.yaml        |  63 +++++++++
 .../bindings/i2c/i2c-cros-ec-tunnel.txt       |  39 ------
 .../bindings/input/cros-ec-keyb.txt           |  72 -----------
 .../bindings/input/google,cros-ec-keyb.yaml   | 120 ++++++++++++++++++
 .../bindings/mfd/google,cros-ec.yaml          |  50 ++++++++
 .../bindings/sound/google,cros-ec-codec.yaml  |  26 ++--
 6 files changed, 249 insertions(+), 121 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
 delete mode 100644 Documentation/devicetree/bindings/input/cros-ec-keyb.txt
 create mode 100644 Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml

-- 
2.18.0

