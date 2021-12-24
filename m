Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8169F47F086
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 19:10:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353415AbhLXSKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 13:10:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353412AbhLXSKj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 13:10:39 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A12C7C061757
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 10:10:38 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id j3-20020a056830014300b0058f4f1ef3c2so7941696otp.13
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 10:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O+E1w+hgBca1POJJ3V7WgopBSO82CqmpublPBn7uXlQ=;
        b=Y/PW+6Ww6SSHO9pEv/h/fMW+QRkfMMQarxizT6K3x6EJCKFKWzm2qrgcXTwXuJ24rf
         4iPYkxEmxzFJucNKluuk5sVPHH6foy/LCAnHP3Shnc/LuhuhkN12mt4T3344tTD0YGNk
         g5SG8m5EP+yEb5PI3o02keKX46GWjeYvfKkdB490cnZNJ8KwLKmqXaTPLnepa4Uk1TfB
         pNti15oXos1s3jKQZ8fTmqkAhQIQ1dDX2PTwvIfRkNfrdsogo72BbZL97S3HA09LqJHk
         59O01WdgG0fLc2oCADooPiQlLCw+oiex6LQ9vQddlFxEexI2Hi9dzBbV+FVCF2+shezR
         r4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O+E1w+hgBca1POJJ3V7WgopBSO82CqmpublPBn7uXlQ=;
        b=Td+yMzT5DEDdcWMf7vp5BoqzsABHwMvcGPbj443UvStjGt6W91I0BVpfAbvdG6mKYB
         8WWpPaP5nQPk0FlsuaRrv9S7z/yG5B+TlSAEZgVib0DWxqpdQ91ZB0cll8Gz9kZ7TOgk
         HPBXijdkGpIjmUFavuJcLn7uiT60xrj7zihC63N0LD/OCkA0s6Sz0YnG3IVS3Np295pb
         bbLA2/un1Vog0sq6xMQq6MFGyV8LhmqAYDVZ4sjZb97AcTpsFsXU1tlRR2KZtFTagsHi
         5NwfjhC40Ru+Fc5fOMa+ZtvDObL84pTeNsJoRjBDV6vWM/4msFJKY+n2/IuKrfqQaqc1
         5auQ==
X-Gm-Message-State: AOAM533GTJ4gHsAG251H6EblA9ZMMTp80V4RFh16tcbrH4Opqg1HX0NL
        EP8jhvL5k5Z2WEd0jK20d224yA==
X-Google-Smtp-Source: ABdhPJzcy58aEyxi+kpkVGGjeuCAvblEfeKTXjQa+cRZQkwV2Fcspki9WHDYTBSeryUiLK2beEbHpw==
X-Received: by 2002:a05:6830:1e13:: with SMTP id s19mr5383465otr.358.1640369438032;
        Fri, 24 Dec 2021 10:10:38 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o19sm1785949oiw.22.2021.12.24.10.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Dec 2021 10:10:37 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, ~okias/devicetree@lists.sr.ht
Subject: Re: [PATCH] ARM: dts: qcom: sdx55: use standartized naming for spmi node
Date:   Fri, 24 Dec 2021 12:10:32 -0600
Message-Id: <164036941060.3935440.6919654945648950806.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211224162937.53404-1-david@ixit.cz>
References: <20211224162937.53404-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Dec 2021 17:29:37 +0100, David Heidelberg wrote:
> Following naming convention, rename qcom,spmi@ node to spmi@.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: sdx55: use standartized naming for spmi node
      commit: 4c444c21bf14a748466be0cf627380cb51cb6877

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
