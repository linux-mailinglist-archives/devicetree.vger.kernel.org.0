Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1058A5643E2
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 05:57:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231494AbiGCD5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231308AbiGCD5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:11 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8834B1ED
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:10 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id m24-20020a0568301e7800b00616b5c114d4so5064102otr.11
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tpGm935hK0zCvMi4UXdykwmGSiEUWWhJJx+dvD/hlhg=;
        b=lUCdH+9ROdX9eVFLGg1Hdi6x+9x72f0OOvPQsObuITi0djdkE2c6K1DKSbp946a8CZ
         Xayok03dMTvZclRhWQY2DNJLPHBg0mahJ1xcWjCdThyq9kNY5N4Dz6+jtd+GSgbu93ht
         7d6P/WLkMmrr6glTMycemIDhpd9oUHuNL89gVukn1jKhx3U0DFSUtUr4urWEGZrZQjQx
         BJ7FQN0R8RpB8ZC/vLYpCTw5LBoRydWksNS6E2rx3IqUa3Ftxlg40Vbs0oWxsXg3+nf2
         RHPK3NuS3RryYfNqvhUUVVfMT4HovAqfSPG/uz2tw/O6+UeIEKVnbBaCnAv5tHiGq5BS
         tBog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tpGm935hK0zCvMi4UXdykwmGSiEUWWhJJx+dvD/hlhg=;
        b=tNp05yktYxoL5eO8jg2m4J6+NKvJ3jXIy2G4rQPjsN6aUhSeyxs8T/lv4pmNEniZR9
         /sy3C/M/ktc+S4mUs8/U4F9HafI/afToiqAUcB1VXH6IUKoM6qqp3BUjwEsW3UBND1JP
         yMedTK3owP7PWuFM/wf2qeb3xdreX/NS3Ak66uSKewYoCmCduz5Sh99n/LW2x+UQgKeX
         ZPW2vCoQdL1uuQJd7cg+Ch9Yg7b8iTP1lhY7m3iuXgGjxcJZlDrfGprW2sGYWWZL8+BY
         tdbAmIymArj1w5f84jeZVreI+x/f2npwMLUez0c7xGCKEt7V/wyRv+ksvUNNsxxwloPS
         CKCg==
X-Gm-Message-State: AJIora8e4jIFNbQLoehuQfs9lTdC21p+g/0F3ZUALafQL/sc+6UQUAat
        jFrtRPgghlDyLfbMvFIRaYuedA==
X-Google-Smtp-Source: AGRyM1tOheTx5aJCMD+ChKsvJOOxDNyWY9gwFq86CGt6bAUBqmoOPFrAkxKmRRyaoEA6c+/0AWqGOg==
X-Received: by 2002:a05:6830:6086:b0:614:d753:36e6 with SMTP id by6-20020a056830608600b00614d75336e6mr9852151otb.121.1656820630315;
        Sat, 02 Jul 2022 20:57:10 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:09 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        freedreno@lists.freedesktop.org,
        Stephen Boyd <swboyd@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: Re: (subset) [PATCH v3 00/14] drm/msm/hdmi: YAML-ify schema and cleanup some platform properties
Date:   Sat,  2 Jul 2022 22:56:06 -0500
Message-Id: <165682055971.445910.10360989519902279271.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 9 Jun 2022 15:23:36 +0300, Dmitry Baryshkov wrote:
> As agreed with David, this is a continuation of his work started at [1].
> 
> Changes since v2:
> - Deprecated usage of phy-names for HDMI node, added two patches to
>   remove this property from DT files,
> - Fixed the uninitialized variable access in hpd_gpio code.
> 
> [...]

Applied, thanks!

[04/14] ARM: dts: qcom: apq8064-ifc6410: drop hdmi-mux-supply
        commit: 6ac2799c3096dc2fe6d65026efa8a6cf212976bd
[13/14] ARM: dts: qcom: apq8064: drop phy-names from HDMI device node
        commit: fe5651cc8e33b5fcdc351e36cd0cd4bff2f6192f

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
