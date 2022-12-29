Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7543C658CC1
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 13:44:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230503AbiL2Moy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 07:44:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiL2Mox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 07:44:53 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5509A1208D
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 04:44:51 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id gh17so44745210ejb.6
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 04:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0TFFrUt4LQqfMqFPZcUCojOx9RB3FN3rW7wfQoSwSrA=;
        b=TeL5UAmg/6zgmU3Ix28zmrwTqBsHNJFuE74+7sO8tbSEZvyyync000drkXXuU7p7Qu
         uWs8ItZm1xA60PyUHCQ4vjfgR1btDJlWhhOXEICIjjAByseTXkqiBDiLXuzM0xSHEAPG
         PscC83Wj4yyfgO8RPMXih7sZs+cuK3LU30TzeHlUxLr8PcFcr89x4uzUpAtNHidk4j/4
         X3x7y8dy69BrnH2ecBlszIw+3IZjK6mHfeppnulHSfG9PnIdZjrWDvS6aNAvRNOJXV++
         3yFKJs46Mj3QS6GIEamPrFslAvLRuROgSJs+z7geztMtCTPcDD5mcWCA/PbzaiHl6c3O
         r9pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0TFFrUt4LQqfMqFPZcUCojOx9RB3FN3rW7wfQoSwSrA=;
        b=bA8jIu46NfmkDat2DwyeSH0j0bc9C7XRek2BDs3AgnnVPkxXyTomSIF1F5pXjujm6A
         iDIetE7ukxxunpHwdIwpcfr/IxHWLsAqSoYQz8NfqnuA40/JNi040c/ORyASd4JlmtKC
         j8zFcikK3kLgGv8DFIFiCdI9acPXOPkanMuClCFjx2PvLPC7be7YOpUAvyta4UfazvmT
         mUM+fwv1k6E7/zRW+EPp4uWBWhqMfD7WpS8cJ0yJJDIunJxPpQJ7zIRlWfyClPze+mUd
         xBLbbQAyxLH7aFqb99vTcpwHLpJHfsOOTOEQtYGj9hKrwyri1Avem1IUuk7Ahp7vfK65
         M66A==
X-Gm-Message-State: AFqh2kpmK/hIs00pufiNfARxOmHsdXSyc6cROXnHnx+gwiXKHM/bjBaG
        aXEeqByYS/DuFYlVwl05nN7Y7w==
X-Google-Smtp-Source: AMrXdXssBXJ2oUDdvTt+u35WNx5VyF+QRRodDl/adWaxq1LEm/yYsY4FbIIzuvo6lICBCR3ElLA3BA==
X-Received: by 2002:a17:906:18e2:b0:7c1:4bb:b157 with SMTP id e2-20020a17090618e200b007c104bbb157mr30451069ejf.4.1672317889933;
        Thu, 29 Dec 2022 04:44:49 -0800 (PST)
Received: from planet9.chello.ie (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id 15-20020a170906318f00b0078db5bddd9csm8483461ejy.22.2022.12.29.04.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 04:44:49 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     quic_mkrishn@quicinc.com, andersson@kernel.org,
        swboyd@chromium.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v3 0/1] Fixup documentation for dsi-phy-28nm
Date:   Thu, 29 Dec 2022 12:44:37 +0000
Message-Id: <20221229124438.504770-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
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

V3:
Moves change to last item in list so as not to break-up grouping of reg/reg-names

V2:
This is the one remaining patch I had from a previous series for
mdss-dsi-ctrl and the dsi-phy. The mdss-dsi-ctrl set became a bigger so I
split out the 28nm phy fixes.

I'm resubmitting with Dmitry's RB as a standalone.

Old: https://lore.kernel.org/all/20220630120845.3356144-1-bryan.odonoghue@linaro.org/

Bryan O'Donoghue (1):
  dt-bindings: msm: dsi-phy-28nm: Add missing
    qcom,dsi-phy-regulator-ldo-mode

 .../devicetree/bindings/display/msm/dsi-phy-28nm.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

-- 
2.34.1

