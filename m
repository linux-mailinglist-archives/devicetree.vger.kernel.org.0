Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90A5D577398
	for <lists+devicetree@lfdr.de>; Sun, 17 Jul 2022 05:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233573AbiGQDIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 23:08:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233422AbiGQDId (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 23:08:33 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7EEB140FE
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:08:32 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-10c0052da61so15609930fac.12
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ItQ3LF8P3wNFSY0uxli8nFbEII66/17QolTIAn/nu5Y=;
        b=iAaIRIuMxAcc8Hrf+pabfOapKDb4Z0fp1ulB6X6TCAwKcJ2/xw3eSj3XuhXP71kwzx
         WSv1WzY9qXv1MlJnBVXPVqXh2cZv2YqKRCun8t+TiMNmnP7bhNfleBYeD6O7MvLa3wYX
         AgMaYtjX2ez2/ga9RwNW/x8UGCkEX00LPriiq85vRYlgL41i/IWrV/kpZzcXpyC9lSJF
         RXIwhUsYcnDzTOpHM77sICE3C0RbWccxwS+5Xdi0DbkFEwhDUyR/d7bdI8IW1KQSg3WK
         w5E5fk2ht8iv8ZqLkosqoCkQ+RM6YMZgqBYZYRD07kk9Co8VYPquJqeOt9/Xk8ikrq1B
         kedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ItQ3LF8P3wNFSY0uxli8nFbEII66/17QolTIAn/nu5Y=;
        b=gExKdOy1HeOkAo6kaEiuxXtOP3nKjmE+wxrsOiwuxWR7/IPt0jZIudg/0YexJztUC/
         egWjv8PKKltSKWdiUupAW9uBuS+UXG61l1OZjRqcbF86RxAS4gXBK4g/mn0iKQ/x6iTr
         JUK0UZ7Lddvn1j6ZhjJw4cM2Robetf9Z+TwtNW9YHaFtPXVPLnlE/2Hin04UXY0wfXkB
         jC06Qpe3jm1t08nfP9Zf28Au4n60ML52VQucJPifl8X5F1LedS+bnb4OvLilZfz6byoZ
         ey39B0doppvg6iUaxVxqHdXv8+ew5YZv9Y3viReGiSDYI/rdvl5m2s+cgMgX1CpjuIKM
         fbvA==
X-Gm-Message-State: AJIora/4GWx7Q/u6+FLQ7HEHK7OayJIudx/i5X2v2sW0cTvyRmuZprpF
        6wr0T4TYmTju/ljqdx9MyNdD3Q==
X-Google-Smtp-Source: AGRyM1tGvcDxxdn8Cfnt6elfocChElqgx6N9V71Eue4TYVxbDEpqvqepHfB+f0ta06nHHZqDQT7prA==
X-Received: by 2002:a05:6870:f20f:b0:10d:382a:e530 with SMTP id t15-20020a056870f20f00b0010d382ae530mr1478510oao.243.1658027312165;
        Sat, 16 Jul 2022 20:08:32 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z203-20020a4a49d4000000b0043577be222bsm3203928ooa.22.2022.07.16.20.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 20:08:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/4] arm64: dts: qcom: USB clock and interrupt fixes
Date:   Sat, 16 Jul 2022 22:08:22 -0500
Message-Id: <165802729676.1737676.12849806472142893834.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220715070248.19078-1-johan+linaro@kernel.org>
References: <20220715070248.19078-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 Jul 2022 09:02:44 +0200, Johan Hovold wrote:
> This is the second half of the series which adds the missing binding for
> SC8280XP and cleans up the current bindings somewhat:
> 
> 	https://lore.kernel.org/all/20220713131340.29401-1-johan+linaro@kernel.org/
> 
> The binding updates have now been merged by Greg so that the qcom dts
> fixes that depend on them can also be applied.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: qcom: reorder USB interrupts
      commit: 079926b5a22ac92c4ac1e15e6cfb20a431802cb5

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
