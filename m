Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BCFD32C8CA
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 02:16:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345727AbhCDAwi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 19:52:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388312AbhCDAML (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 19:12:11 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD6AC0604DD
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 16:04:41 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id z5so2168058plg.3
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 16:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=0PUvshgyVV4yWXxlheOB25MFRUTSbA7Lvy0ujbZz2vg=;
        b=E+pwGENB6dDKUN2ROFUd6OO3el01AwHnn4uae6vdXnNKWDL+N2lIiNQSViHnR2EJ2f
         c2mkD9hHhGUdXzz1+/sEfbhILwJi5IE5ye4AtiOFUD2IDbU7P/PLKYol+kvsCbNTgKGL
         ivhEyzG/QM4elkE+zynEP97E79AfUnh8qVri0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=0PUvshgyVV4yWXxlheOB25MFRUTSbA7Lvy0ujbZz2vg=;
        b=SMcONCnWka2b8ZI/zlACKSvmEqVMlJs//GVKUNe/zII0K1ojmoNw/CpqIVF8+ysXOP
         J/DrlDDtsBm6uDn6NMsewF7FEe2/CllK7OhiiDf06OQCHTQvZPHnif46QnWFae/PFEwQ
         BtQnvrWexa2JO3A3jKEs2xdXorCyAsSxjrkZNA/U39MOWPpWkVlR1OfxomdqvWYV4Gch
         XC6gQ/NkVOQDoN0ozLsCj9mvvib3EXHLar26jYY3GjzHkUcdN9S0BnylTaC9lVQ3S1oL
         NraGV5dpXv8h45fKRcBVDu1u6fBx/7DvgurvkTXaHfmgOxBlbKw14ARTWbZkwD9wiA1i
         QS+g==
X-Gm-Message-State: AOAM531DWzJ257w+cLroJObChPtI/8XND/3klkldLmpRSD6GrUNqDzG8
        /UcyeFOG0DvWm9F+dslu/q4ozw==
X-Google-Smtp-Source: ABdhPJy79CrkE5sjucekWVe0rzqDt6c/YxGJBccarSbwczdrr09l6Phnh+rnH0CugNa6WEs/Cu4UxQ==
X-Received: by 2002:a17:90a:5887:: with SMTP id j7mr1548946pji.178.1614816281461;
        Wed, 03 Mar 2021 16:04:41 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:2510:ab07:78a:7d78])
        by smtp.gmail.com with ESMTPSA id g7sm23253034pgb.10.2021.03.03.16.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 16:04:41 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1614773878-8058-7-git-send-email-rnayak@codeaurora.org>
References: <1614773878-8058-1-git-send-email-rnayak@codeaurora.org> <1614773878-8058-7-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH v2 06/14] arm64: dts: qcom: SC7280: Add rpmhcc clock controller node
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Taniya Das <tdas@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Wed, 03 Mar 2021 16:04:39 -0800
Message-ID: <161481627947.1478170.131797678703607798@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-03-03 04:17:50)
> Add rpmhcc clock controller node for SC7280. Also add references to
> rpmhcc clocks in gcc.
>=20
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
