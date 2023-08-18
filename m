Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C68E7780536
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 06:52:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357873AbjHREvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 00:51:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357886AbjHREvd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 00:51:33 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF2143A8B
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 21:51:32 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-51b4ef5378bso424519a12.1
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 21:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692334292; x=1692939092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TD+gevgj24BK8HPP9GIiWb36T/VnfPNgPphoj/WcGx0=;
        b=LeYl1NvcE31cfFvU2zGE9J5cv1gngt8rryB1sAeEokizuZXe19tFTbtA0Hhh4TVe+v
         2ABCitl7HkikCwBgKVIlMa/nKGlTc1WrSIjOsm5OT1mH2kbV//8CmR4OWqxARI9ZNmHE
         WM7J7AZiVSQsiKli6vfG+P7i7aUqtmxz5tNaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692334292; x=1692939092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TD+gevgj24BK8HPP9GIiWb36T/VnfPNgPphoj/WcGx0=;
        b=GQbzkX4Bg0rc8+k3BtBy4dhtLiaw19L6x9EBelS944BaNkud2XY22pr63EeXO2sJ+I
         bE0XzEhU5283WMgpZpr04XLHMRUoxogLo+SlkEz0ByowjbOyDazDKYM2BhIZ3T2IgbXN
         YRW7pNauWmEMt5KE7xZnt59QnRPH5cy5+JCB2zy5AZiHzt4aXoHdUzX9o2sW67mMx800
         MduYXbEuMXI6MOd43Kdc0FYxg0WL3kIbJY3FtFv3SG6hWzauSix1PAkaFuAzOJcNN5XA
         dN0hJvQ5j4laE+em7iHL7NxU+dhIkhwyJubMPoSV4XyUZUDYpyg5egRoX+8HfwPgJk+1
         PkTg==
X-Gm-Message-State: AOJu0YxOLYU6kjzinui3ixoHglqOKYaadQgz4J05dxTpl22n5TkaGYYh
        jBheC7PHeY9SzExB01vC4Gq/yA==
X-Google-Smtp-Source: AGHT+IFjIFUEtXq1tnxcTXCexqGlqyUOsce3/7NPFcbB/8zb467vXeOLFQEEiT7xtoEunJegNEbCpA==
X-Received: by 2002:a05:6a20:2593:b0:13e:e3aa:d871 with SMTP id k19-20020a056a20259300b0013ee3aad871mr1699472pzd.53.1692334292110;
        Thu, 17 Aug 2023 21:51:32 -0700 (PDT)
Received: from localhost (97.176.124.34.bc.googleusercontent.com. [34.124.176.97])
        by smtp.gmail.com with UTF8SMTPSA id a2-20020aa780c2000000b00688214cff65sm603812pfn.44.2023.08.17.21.51.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Aug 2023 21:51:31 -0700 (PDT)
From:   yuanhsinte@chromium.org
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Hsin-Te Yuan <yuanhsinte@chromium.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Hsin-Te Yuan <yuanhsinte@google.com>
Subject: [PATCH RESEND v2] arm64: dts: mt8195-cherry-tomato: change watchdog reset
 boot flow
Date:   Fri, 18 Aug 2023 04:51:17 +0000
Message-ID: <20230818-send-upstream-v2-1-f10d951a2971@google.com>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.2
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Hsin-Te Yuan <yuanhsinte@chromium.org>=0D

The external output reset signal was originally disabled and sent from=0D
firmware. However, an unfixed bug in the firmware on tomato prevents=0D
the signal from being sent, causing the device to fail to boot. To fix=0D
this, enable external output reset signal to allow the device to reboot=0D
normally.=0D
=0D
Signed-off-by: Hsin-Te Yuan <yuanhsinte@google.com>=0D
---=0D
Changes in v2:=0D
- Limit the effect only on tomato.=0D
---=0D
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 4 ++++=0D
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 4 ++++=0D
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts | 4 ++++=0D
 3 files changed, 12 insertions(+)=0D
=0D
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b/arc=
h/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts=0D
index 2d5e8f371b6de..a82d716f10d44 100644=0D
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts=0D
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts=0D
@@ -23,3 +23,7 @@ &sound {=0D
 &ts_10 {=0D
 	status =3D "okay";=0D
 };=0D
+=0D
+&watchdog {=0D
+	/delete-property/ mediatek,disable-extrst;=0D
+};=0D
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts b/arc=
h/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts=0D
index 2586c32ce6e6f..2fe20e0dad836 100644=0D
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts=0D
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts=0D
@@ -43,3 +43,7 @@ &sound {=0D
 &ts_10 {=0D
 	status =3D "okay";=0D
 };=0D
+=0D
+&watchdog {=0D
+	/delete-property/ mediatek,disable-extrst;=0D
+};=0D
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts b/arc=
h/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts=0D
index f54f9477b99da..dd294ca98194c 100644=0D
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts=0D
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts=0D
@@ -44,3 +44,7 @@ &sound {=0D
 &ts_10 {=0D
 	status =3D "okay";=0D
 };=0D
+=0D
+&watchdog {=0D
+	/delete-property/ mediatek,disable-extrst;=0D
+};=0D
=0D
---=0D
base-commit: 5d0c230f1de8c7515b6567d9afba1f196fb4e2f4=0D
change-id: 20230818-send-upstream-e91e615a893c=0D
=0D
Best regards,=0D
-- =0D
Hsin-Te Yuan <yuanhsinte@google.com>=0D
=0D
