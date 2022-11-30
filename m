Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3960363E295
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 22:20:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbiK3VU3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 16:20:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiK3VU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 16:20:27 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4FFA8B1B4
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 13:20:26 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id m19so24540334edj.8
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 13:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O/Z8JYSlIL5b/NaGmnUjVRx48qydsMASmxAsCA/K9VY=;
        b=JUEoYyGbYelG/R2BnPlxHeOgXELSGTlwMsJBPpwA13wQ1aBwg4OoDo5gbA/GNmqSZa
         bRcwHS+g5pqINlDo/prC0YD4RAuh6Tu4nU30bB83LRLstoc0/Hlnez//3Zrs/sMVYs1I
         MNkKE3p/oT3+gR+V9Bgg+BY4OJ2g1c1lMCT/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O/Z8JYSlIL5b/NaGmnUjVRx48qydsMASmxAsCA/K9VY=;
        b=Hzfv7/It3GPDGCnXROWjLavhteZc6bK30WqedKfoBnEzJyF9iVmxudjNOI9H6RCTPM
         IdlWpPdmX0EUEfZDzFv6pg0WpEFHtNzJo24Y5TCkgpcFruQv/1aLumk2kR2kMnLGjtd/
         6i2IUr2JsnKEECdvRMsERm8eUUB4SOvRNWt06dChdKipRPGdwHEgr2eYpozR2XSDv2sE
         l1hi7OCG5du2Ef18vaw7rbB2Z1OMMwJmeYOemlxSLbR3dH7Mws2nT7ZOY8l6u9uB98im
         Ko8hL6Rn1oZsGt7sCaHky8SMqToHa6RDfkqxbTy4hY6/+G8NPhSQY5U1eTlA+DeiJcS3
         dy5Q==
X-Gm-Message-State: ANoB5pmdxWWS/GxDCH1aFcFPOwQb9004di9tOYUFI2ImHF58DDcvlO4s
        gEqD0gmqL/NFpBi1eSNGUh/xb43H3RRnVUW6
X-Google-Smtp-Source: AA0mqf72GE5K/THKP5dQx1SEDNcZTOohnW+9NZOfpE9Kt2d1QDTy6NXFT+4SieNxrWFmY7o/1XRVrg==
X-Received: by 2002:aa7:cd91:0:b0:469:2f36:fd with SMTP id x17-20020aa7cd91000000b004692f3600fdmr43925246edv.385.1669843225067;
        Wed, 30 Nov 2022 13:20:25 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id i15-20020a170906264f00b007aa239cf4d9sm1046169ejc.89.2022.11.30.13.20.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 13:20:23 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id q7so28269759wrr.8
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 13:20:22 -0800 (PST)
X-Received: by 2002:adf:fb4c:0:b0:236:5270:735e with SMTP id
 c12-20020adffb4c000000b002365270735emr27787482wrs.659.1669843222443; Wed, 30
 Nov 2022 13:20:22 -0800 (PST)
MIME-Version: 1.0
References: <20221130142829.v10.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
In-Reply-To: <20221130142829.v10.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 30 Nov 2022 13:20:09 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VQ-NTEOtg7_BZRT8zMrmt0B1FEMxixCynmnCH+aciFqg@mail.gmail.com>
Message-ID: <CAD=FV=VQ-NTEOtg7_BZRT8zMrmt0B1FEMxixCynmnCH+aciFqg@mail.gmail.com>
Subject: Re: [PATCH v10 1/2] dt-bindings: arm: qcom: Add zombie
To:     Owen Yang <ecs.taipeikernel@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>, Harvey <hunge@google.com>,
        Bob Moragues <moragues@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Gavin Lee <gavin.lee@ecs.com.tw>,
        Matthias Kaehlcke <mka@google.com>,
        Abner Yen <abner.yen@ecs.com.tw>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Nov 29, 2022 at 10:30 PM Owen Yang <ecs.taipeikernel@gmail.com> wrote:
>
> Add entries in the device tree binding for sc7280-zombie.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
>
> Signed-off-by: Owen Yang <ecs.taipeikernel@gmail.com>

When you send v11, please remove the blank line between the
Reviewed-by tags and the Signed-off-by tag. All tags should be
together.

-Doug
