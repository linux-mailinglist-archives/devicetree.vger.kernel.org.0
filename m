Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC10F2830B8
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 09:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725875AbgJEHOl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 03:14:41 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:44942 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbgJEHOk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 03:14:40 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 25507299434
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     robh@kernel.org
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org
Subject: [PATCH 0/3] Fix checker warnings related to cros-ec binding
Date:   Mon,  5 Oct 2020 09:13:59 +0200
Message-Id: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
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

Kind regards,
Ricardo

Ricardo Cañuelo (3):
  dt-bindings: i2c: convert i2c-cros-ec-tunnel to json-schema
  dt-bindings: input: convert cros-ec-keyb to json-schema
  dt-bindings: mfd: google,cros-ec: add missing properties

 .../i2c/google,cros-ec-i2c-tunnel.yaml        | 56 +++++++++++
 .../bindings/i2c/i2c-cros-ec-tunnel.txt       | 39 --------
 .../bindings/input/cros-ec-keyb.txt           | 72 ---------------
 .../bindings/input/google,cros-ec-keyb.yaml   | 92 +++++++++++++++++++
 .../bindings/mfd/google,cros-ec.yaml          | 40 ++++++++
 5 files changed, 188 insertions(+), 111 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
 delete mode 100644 Documentation/devicetree/bindings/input/cros-ec-keyb.txt
 create mode 100644 Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml

-- 
2.18.0

