Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D195F51AC15
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 20:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376439AbiEDSGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 14:06:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245349AbiEDSGK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 14:06:10 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D39705004D
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 10:21:24 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-ed9a75c453so1827979fac.11
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 10:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g20RKBkr8AbgrotE60QsDG+nYEZIMd4FLsb3XNu10DQ=;
        b=U1ySGV80Z1aMt5EdVV4Fl5RT6/DF5tCKSn2etEbID/N9E7XY7QiVDfC+FP+9jsD5bY
         SHZOmihM2k5697HRpxHumk5CzgpBtCexVm1frLBBmwDsMXHt5a6TUVWopLzOvYq3A6Wl
         746XQtm9JOMhBEwMR7XcD4OmLd/8q4VbawCwjDJSWQ8OrHT1fxNLyYSzr/hz4JyNoNEZ
         9Ac2xGqsBG0sA1fSwp4P/O1gS/ISe1Eu3k4EE99P8P+9v10+6xfygFw6Mjh0SRlQZayH
         4Ux0/inq1xUS7LQ7tshpJ2ei96oX8cz2L2/leT7ZaKAdyPhKCAH46pKvas2UT2cNJsh8
         IRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g20RKBkr8AbgrotE60QsDG+nYEZIMd4FLsb3XNu10DQ=;
        b=Po3Ac4NFAZlvlN4JUQw8CeC0/9w/0ChXUh6x3kSmKW4WgMz4PSTuSZzhtD5NbfiQ1U
         P+pzbib6q7xqms2JZy4qyozDYDQbnntKBOB+Nbox+s/en+m2warIUHnhaHnxTqYgNfAx
         ecPjghp/JfdqclebIad9qazvepaKA8Zk5N4/yG8yfGHBKhC6zfePSbpR4bt7P+axrfx5
         N0CetWw/rLKsBz0EBC+75ghcwCza7qnlvd6ZEUAAITMqip7EoGp7nzGZ5QjZ4tE86HKo
         Mq3MM+FLn4k2q03aupA+SJYI2Ej5z4QMuF9m09FAtPvKu0Bk+cWD0nJw3PHZkFYAakwJ
         h3VA==
X-Gm-Message-State: AOAM531L3aw0MxhX/bvhsLsYD2vofzNPkax6x9rJqD3RMsiYEhd/gNNh
        d39iFYyI0jPOTC9af10LKREdTb+oslDYRJWO
X-Google-Smtp-Source: ABdhPJxT/TElpFFXuSI5imiLwTiE03GxZwvqKtL4NJ3Q4qHeQMgcFhUiJGPL7xYh8zpcNcfRq7+Tjw==
X-Received: by 2002:a05:6870:4341:b0:d3:1412:8ecb with SMTP id x1-20020a056870434100b000d314128ecbmr279546oah.36.1651684884203;
        Wed, 04 May 2022 10:21:24 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a7-20020a056870b14700b000ead8b89484sm5785452oal.5.2022.05.04.10.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 10:21:23 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Katherine Perez <kaperez@linux.microsoft.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, Felipe Balbi <balbi@kernel.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH 1/1] arm64: dts: qcom: sm8350-duo2: enable battery charger
Date:   Wed,  4 May 2022 12:21:09 -0500
Message-Id: <165168485227.3730817.11054396953890266429.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211207231736.1762503-2-kaperez@linux.microsoft.com>
References: <20211207231736.1762503-1-kaperez@linux.microsoft.com> <20211207231736.1762503-2-kaperez@linux.microsoft.com>
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

On Tue, 7 Dec 2021 15:17:36 -0800, Katherine Perez wrote:
> Enable the relevant qup and I2C nodes to enable the battery charger.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sm8350-duo2: enable battery charger
      commit: aadc48f7c4ecd11b4fba7ba7d5ed1788ce32bb78

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
