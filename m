Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E870C67F052
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 22:22:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbjA0VWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 16:22:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjA0VWw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 16:22:52 -0500
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5620DE05C
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:22:51 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-4fda31c3351so83800737b3.11
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4vdOAOoqQyamu824Bg2jVnX0JB8+cggVMUUOa+AlpfM=;
        b=RIrwC5Z1pwvW6IXth4E7ECGZv6907LRLEhB9RED4jcLIwd3gzD49gsKzWm2b6OLsU4
         s1GU4eUxxSslsNtgxFClhqTiqgqjjvx9D8xoWht7JDPu6fjJUSA+xxEcO082iDUoJEWT
         JB87HTDSpM0uTAZfoNzx9FtRXJg45QGLC+lvqHyMIb5ymDA5YVWJK+kE4uSqr9tw7Zua
         An3tDk6d8hD0v1I5ZBReh2dgyUCNOulYRGtxM+0uj9u8F6L2QbQVTcNN2ORWJOqCZH6r
         2QG1SlDbCTxqWhi76j7jFHhAYVKhtEL3Af3qVbeApEVNgWJcTAMI6u1GUy35S4DAwB2U
         N6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4vdOAOoqQyamu824Bg2jVnX0JB8+cggVMUUOa+AlpfM=;
        b=B2qDUO0omNZepLxXuqodmJuIaVJ/T5rZDrFdqa6Fw3f7nJNQGSAcpbi+qaXWdR3I5l
         VMWhwy9XoNx9HIVwTfe8lFKwzG1rai/v7x7MCq3zZZBkiEVs95xtvcKltE8FjpHwvv3F
         uM1eaN9ZzFlq1LPRWRy/HVAFywt3uFkv0nrSjaXh6CZY3001T1XfprxxhAisVDi8FkCa
         S2nMwYWBxVzgBkL5JwSIF/AlmQd5HNL1J1tgWrYA0DPpTsBsJyajN/SScPMxeXekN9QE
         M770O/AfBOiLrxECF0i5y71RgKDqU8ZBtMgXLkeGFDL/Y6hTdWsPeHjzVpfzcvMPaXoL
         lRRg==
X-Gm-Message-State: AO0yUKXTvuZXorw3VinEOTaZvsduodoOADZgSkGBXXSZVhOofckn0bFm
        BVQEaCsR561DjnQvR/x+jZ8bK4OJho9/jwqE7bqECg==
X-Google-Smtp-Source: AK7set/Llav9UuJGUJ9624v7B8atuwarYYb+oB+F7FA5Lg+flMxFV4At7bePUiuLQUxF10HlFhWaE0Yc2vleylJ3laA=
X-Received: by 2002:a0d:d890:0:b0:4de:3f6d:76d0 with SMTP id
 a138-20020a0dd890000000b004de3f6d76d0mr1314848ywe.280.1674854570555; Fri, 27
 Jan 2023 13:22:50 -0800 (PST)
MIME-Version: 1.0
References: <20230127192139.299228-1-brgl@bgdev.pl> <52508584-47c5-2497-68c8-2c0044911aca@linaro.org>
In-Reply-To: <52508584-47c5-2497-68c8-2c0044911aca@linaro.org>
From:   Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date:   Fri, 27 Jan 2023 22:22:39 +0100
Message-ID: <CACMJSevqcaqjLQJ6_5Xn=hMbrsjdxGVM=9RYwYQ8hW_Uy-tRzA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: qcom,scm: add qcom,scm-sa8775p compatible
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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

On Fri, 27 Jan 2023 at 20:56, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/01/2023 20:21, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add a compatible for the sa8775p platform's Secure Channel Manager
> > firmware interface.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
> >  1 file changed, 1 insertion(+)
>
> If you send bindings separately from DTS (which is fine), please provide
> the link to the user - either DTS or driver for this compatible. Driver
> does not use it, thus to the DTS.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>

Can you specify what kind of link you're expecting? I'm looking at
previous commits for this file and not seeing anything. There's no
upstream user of this compatible in any DTS yet.

Bart
