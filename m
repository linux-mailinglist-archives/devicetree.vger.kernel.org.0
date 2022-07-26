Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9377458139E
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 14:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233719AbiGZM4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 08:56:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238166AbiGZM4a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 08:56:30 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AA1B255AC
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:56:29 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id b26so20054268wrc.2
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:mime-version:content-transfer-encoding:from:date:message-id
         :to:cc;
        bh=TYVpWfq2HZQFkJkUsjuT3+OH2/CsoiFy0t7aK/wwYcc=;
        b=UBvhtWzt3DHFwXizB1isgLkwtszKbw3B3ACzitCBV4Mf3bOz9w4Mt0Q7ryBZw930k7
         HHbsoUy2FTe728lwS+DodOf/jURVyUEfsjoYImKgMRaFfW0Xe4mFQrHPVfdcagC5+ISO
         J1IPoXQyrKOUcOX4FVyhwQE4EA72Q/+Zk7VshT0V5dSb8J+GlXNqzKQHPD6pj5RKOWp7
         91TJBpugRtB7SMYBWxueFAATYOhTOW0wriCzrdwfAgDGONGLvNuVe4pbCzOcODfNnKUu
         Oq38NnfDl+ilReWZ/qRCN7evoGRsRjnyMxJOH/nqP8WMsnT1d7a032FklXTlOXzi++hF
         4yrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:mime-version:content-transfer-encoding
         :from:date:message-id:to:cc;
        bh=TYVpWfq2HZQFkJkUsjuT3+OH2/CsoiFy0t7aK/wwYcc=;
        b=y31lx0BsQ/esdZnfGkUfjcgNcuH7UmG3OV7Xsep/8YkFcpH9pYk/UkXpJHCqHd/ieR
         3uuGMIv59kdRvnS0Xbplc9JDTnu5qJD5vVpnU4F8jEMTIRVnqLl8oix0UvjW/5lowt/L
         Ws1pNRgN8FN+wMXs0VJhAGS0Y2NVVgVO7fd6QWyJVddgbFUOsGxIW7kuNILlyOereUZw
         7F15B+wrJVhJVh4VyqdmbGwONYCSDCMhBTh30Dci80pN4TbHkgP7xe7dkDPxqSJrZJO0
         WaEyOyui3vPCyGEdEbDcb4MSDcKlObojEEzNg+GcA0b93/vfCX8Sesy2ey7N4xNTLBhg
         5vKA==
X-Gm-Message-State: AJIora/3sKUdctPn98T0HBI7k+8HBuaoyafdH6GZsYhqXB8vAocSkkoe
        74fywZRX49d3ugpN4p8YJh+l6A==
X-Google-Smtp-Source: AGRyM1uXUsdiGuXurwvyCalFFjQJEVSbWfw/z+1nQSYHOyzlEzhlO2ccY6Uo0YOkNIQxIIIVj+N90w==
X-Received: by 2002:a05:6000:1f9a:b0:21e:8de2:727a with SMTP id bw26-20020a0560001f9a00b0021e8de2727amr5437446wrb.576.1658840188043;
        Tue, 26 Jul 2022 05:56:28 -0700 (PDT)
Received: from [192.168.2.253] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id k1-20020adff5c1000000b0020fff0ea0a3sm14171549wrp.116.2022.07.26.05.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 05:56:27 -0700 (PDT)
Subject: [PATCH v2 0/7] Input: mt6779-keypad - double keys support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
Date:   Tue, 26 Jul 2022 14:56:05 +0200
Message-Id: <20220720-mt8183-keypad-v2-0-6d42c357cb76@baylibre.com>
X-b4-tracking: H4sIAHvk32IC/3XOwQ6CMBAE0F8hPVvTLqUUT/6H8bBbttKoYFpCQgj/bvHuaTKHl5lNZE6Rs7hUm0
 i8xBynsRQ4VcIPOD5Yxr50AQpAtaDke3ba1fLJ6wd7CQqxbbWyIShRDGFmSQlHPxzKWodBk22Mc3VL
 xiBQYNv0npAtQaOwp2Drgw4xz1Naf08WXeL2b3TRUkkOXfDQFR7MlXB9RUp89tNb3Pd9/wIohsyH2A AAAA==
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>
X-Mailer: b4 0.10.0-dev-78725
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MediaTek keypad controller has multiple operating modes:
* single key detection (currently implemented)
* double key detection

With double key detection, each (row,column) is a group that can detect
two keys in the key matrix.
This minimizes the overall pin counts for cost reduction.
However, pressing multiple keys in the same group will not be
detected properly.

On some boards, like mt8183-pumpkin, double key detection is used.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

---
Changes in v2:
- bindings: add matrix-keymap justification in commit message (Krzysztof)
- bindings: switch from double-keys(boolean) to keys-per-group(uint32) (Krzysztof)
- driver: add a function pointer for row/column calculation (Angelo)
- Link to v1: https://lore.kernel.org/r/20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com

---
Fabien Parent (2):
      arm64: dts: mediatek: mt8183: add keyboard node
      arm64: dts: mediatek: mt8183-pumpkin: add keypad support

Mattijs Korpershoek (5):
      MAINTAINERS: input: add mattijs for mt6779-keypad
      dt-bindings: mediatek,mt6779-keypad: use unevaluatedProperties
      dt-bindings: mediatek,mt6779-keypad: add mediatek,keys-per-group
      Input: mt6779-keypad - prepare double keys support with calc_row_col
      Input: mt6779-keypad - support double keys matrix

 .../bindings/input/mediatek,mt6779-keypad.yaml     |  8 ++++-
 MAINTAINERS                                        |  6 ++++
 arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts    | 21 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  9 +++++
 drivers/input/keyboard/mt6779-keypad.c             | 41 ++++++++++++++++++++--
 5 files changed, 82 insertions(+), 3 deletions(-)
---
base-commit: 668af1b6548837b44a2bfe65dcbae6b250adbf63
change-id: 20220720-mt8183-keypad-20aa77106ff0

Best regards,
-- 
Mattijs Korpershoek <mkorpershoek@baylibre.com>
