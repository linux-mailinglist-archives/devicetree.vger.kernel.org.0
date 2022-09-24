Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7485A5E8B02
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:43:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233048AbiIXJnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:43:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230134AbiIXJnv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:43:51 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F589237FF
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:43:50 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id i26so3688139lfp.11
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=guecmyRIRRz2AXWadVLwOMYEwJax3FS9elbcAnyJFGs=;
        b=ShrZcbOcEr4oy3XOUsaUT8tLdzEoQ9DZOHKcv0og1a4hbgpfPg3szGEJ2fns8vGePI
         5HolOuuvjarT38gF7pYPXn+QEX8XnqCKmmsSCEDj7/vs70OE5mTB7NOFfwOgBBL2+Gfv
         3HGExhq8OvvGD6XH8PbIXmA9oqQz27O9o4elh7mZ8tg+NjwocsU6U4gIT6JkFMRCVsKs
         wHyOljBz/3umuyjZDhRxvLRM3Spq4Mqxh4HRZVmTR1kAftv9Vw+AovL4jhps8RQEtc2m
         ZZu+nXJLI0euvN3zvlv9Gc/gXUq3zGfzyIqKKeexx9mEn8ZnVLQ8vP/V6CSn8p+D0u9H
         quLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=guecmyRIRRz2AXWadVLwOMYEwJax3FS9elbcAnyJFGs=;
        b=w0x25fnCD8nfpGgiE0dTALPo32JxWyEdWPoCBGDNabtHukHztY88zM6k4zE5HwCQQx
         A3Hl12b7tFHhFFql5ETxMLzCki5vJPEVZyvJvKJjd+grJRqVRf9iHf8ayuglvmAQXirw
         hHJkTdjIenxe5OVw5ubhyb1LJqzMdBnSVzsxhgBj0QteXWCpt9TWkQTW9v1qby4cYB7h
         /6Z1PxXAnbp2rXDzTKXmi43c0xbNYl8X47MAgoIs4HqYRXWCpG01fIoPwHDxtTFReuZT
         9NlD8dfsfwNtTdTjl47t7iN9azglmgvpZ6n6DC4pL5VKK++1hwuGussVjdQXwRw1XYGa
         0g5Q==
X-Gm-Message-State: ACrzQf3M71ZHlDgtmz64BV9+LVskECWvAr9UC/+iP+ygGt5Fe7bNeFDY
        tMPwVdLemIrjiy9HgIVeXF1chg==
X-Google-Smtp-Source: AMsMyM5ZmT4tx4z30xIzBpRGlclQSCUra8mRCpWgxqdBdL/38aqlqC5ixrwsatwiyZQzLn/4fj6eFw==
X-Received: by 2002:a05:6512:2803:b0:49f:979c:cc53 with SMTP id cf3-20020a056512280300b0049f979ccc53mr5037103lfb.76.1664012628627;
        Sat, 24 Sep 2022 02:43:48 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x13-20020a056512078d00b00496693860dcsm1833347lfr.232.2022.09.24.02.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 02:43:48 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 0/2] arm: dts: qcom: rename HDMI PHY nodes
Date:   Sat, 24 Sep 2022 12:43:45 +0300
Message-Id: <20220924094347.178666-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Historically HDMI PHY device tree nodes used the hdmi-phy@ names.
Replace them with generic phy@ names.

While there is no such requirement in the DT schema, it's worth doing
that because:

1) The recent qcom DT files already use just phy@ for most of PHY nodes

2) The recommended list from devicetree specs mentions
usb-phy/ethernet-phy, but not <anything>-phy, so I'd think that those
two are mostly for backwards compatibility.

3) I liked the example of sc7280 which switched all MDSS PHYs to just
phy@ (this includes DSI PHY, eDP PHY and, by extension, the HDMI PHY).

Dmitry Baryshkov (2):
  ARM: dts: qcom-apq8064: change HDMI PHY node name to generic one
  arm64: dts: qcom: msm8996: change HDMI PHY node name to generic one

 arch/arm/boot/dts/qcom-apq8064-ifc6410.dts | 2 +-
 arch/arm/boot/dts/qcom-apq8064.dtsi        | 2 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.35.1

