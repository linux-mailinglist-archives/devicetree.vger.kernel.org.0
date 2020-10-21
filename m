Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8458C294BDF
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 13:43:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439580AbgJULn0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 07:43:26 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:54060 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439576AbgJULn0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 07:43:26 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 63B771F44D2F
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     robh@kernel.org
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com, cychiang@chromium.org,
        tzungbi@google.com
Subject: [PATCH v3 0/3] Fix checker warnings related to cros-ec binding
Date:   Wed, 21 Oct 2020 13:43:05 +0200
Message-Id: <20201021114308.25485-1-ricardo.canuelo@collabora.com>
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

Changes from v2:

  - [Rob] bindings/input/google,cros-ec-keyb.yaml restored to the v1
    version (ie. using unevaluatedProperties: false and referencing
    input/matrix-keymap.yaml)

Regarding the discussion [1] about the addition of a new "codecs"
intermediate node in google,cros-ec.yaml to hold the ec-codec, I decided
to leave it in since I think that should be the proper way to define
it. Currently there's no hardware nor DTs using that device, so when
it's eventually used the sound/soc/codecs/cros_ec_codec.c driver should
be updated to handle the DT structure properly.

  [1] https://www.spinics.net/lists/devicetree/msg382463.html

Cheers,
Ricardo

Ricardo Cañuelo (3):
  dt-bindings: i2c: convert i2c-cros-ec-tunnel to json-schema
  dt-bindings: input: convert cros-ec-keyb to json-schema
  mfd: google,cros-ec: add missing properties

 .../i2c/google,cros-ec-i2c-tunnel.yaml        | 63 +++++++++++++
 .../bindings/i2c/i2c-cros-ec-tunnel.txt       | 39 --------
 .../bindings/input/cros-ec-keyb.txt           | 72 ---------------
 .../bindings/input/google,cros-ec-keyb.yaml   | 92 +++++++++++++++++++
 .../bindings/mfd/google,cros-ec.yaml          | 50 ++++++++++
 .../bindings/sound/google,cros-ec-codec.yaml  | 26 ++++--
 6 files changed, 221 insertions(+), 121 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
 delete mode 100644 Documentation/devicetree/bindings/input/cros-ec-keyb.txt
 create mode 100644 Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml

-- 
2.18.0

