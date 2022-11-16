Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD7A62C4B6
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 17:37:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231871AbiKPQhX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 11:37:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238989AbiKPQhC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 11:37:02 -0500
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CB6E40903
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:31:01 -0800 (PST)
Received: by mail-qt1-x833.google.com with SMTP id jr19so11000175qtb.7
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ApymBN4HCJe4qPGiaFQtDv5unh6AiatY7RGDCxWHUDg=;
        b=FrERdPZcuqjxQfZTlaYc0UDu4E5e6Q3qAG6L95OXLAXP79g/xalUGw/BhXBlOyqKBv
         jbNldlmaM5IOFfRm952+FVbMV6yJqK3Wy5jMZJYvdnSzxGca5E0MfuBCmlaADJeIQT8o
         i6ORG4y5fM5oPshbLC0l16ml5f5/HLLGBiyPje9CRyTcv0B5NO4wNQ51WxAM/VDxT2RT
         OXRVEx5VTflX13cxwXkjZYVLs0+LN/Tg5/hFbKY3jNMOhwrLSmpGYnfxGv3qSSKb3hW+
         6yA/9Q6rfLf+L1b4kTlP/k2RmiLizj/LM/TM4XlSt6UrXq8WODQWl2HzUVYM/ZK4AWHx
         CUIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ApymBN4HCJe4qPGiaFQtDv5unh6AiatY7RGDCxWHUDg=;
        b=1gztCfZkrSypg06I/AIN2RtDTaOxNRGAcYS5FebVdQnU6cWL8dGunhbgF5h4pEefaE
         Y9uBV3bYWmrtIA4J/5DQu0MTpcOwkTpffMfv5j/N0vA/XonqUwSQeO2J1wT4z9QAFQuL
         IVfspRJIv2jBqgJc9lunw8SpvvSHWwKDIuy2mDrDRZqBUKxzfWNFuEx3tHNL+5h3gFG5
         B4jwumrNwFupjQaSW0vEJVaxfIv982JGPUKNVrXPwV8+lAacP4Cv/FnCgO7ZAkuCJsqT
         nkRLXBdv0Yv9QfLaNoI25KvtlGfb1wOEO0QVQJdjrvc6N4qIeGRqac7mLy04y3BkLlxJ
         KEGQ==
X-Gm-Message-State: ANoB5pm3cXikVHD7oKhLLKK/Zkk+qemLpLh9SG8k8TjLZj8ZfmBdw/NH
        qWVF0Ln0e0qSw0l92VLrDxu73q3CvMzHScK41N1yAg==
X-Google-Smtp-Source: AA0mqf7nZU1tzxNLlm9U6r0LUkMRNu1wpaM0W4L4pVP+0ls6sXTlGSEFegzPrvVwLv9bhlPQ+5bo0ytBD1d5XWy44Y4=
X-Received: by 2002:ac8:7303:0:b0:3a5:50fa:1a32 with SMTP id
 x3-20020ac87303000000b003a550fa1a32mr21752240qto.11.1668616260181; Wed, 16
 Nov 2022 08:31:00 -0800 (PST)
MIME-Version: 1.0
References: <20221116154935.163810-1-krzysztof.kozlowski@linaro.org> <92993d1d-e7b0-199c-5652-5158988a65b9@linaro.org>
In-Reply-To: <92993d1d-e7b0-199c-5652-5158988a65b9@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date:   Wed, 16 Nov 2022 17:30:49 +0100
Message-ID: <CAGE=qrpAUcGwS5EQgMA9oA0c56=1C+2X5TjyyEFrf4xd5r7k+Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8150: use defines for RPMh power domains
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 16 Nov 2022 at 16:58, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> On 16/11/2022 16:49, Krzysztof Kozlowski wrote:
> > Use defines for RPMh power domains instead of hard-coding numbers.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> I sent exactly the same patch yesterday.

Then the same as me I think you miss remoteproc@4080000. :)
