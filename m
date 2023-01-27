Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 092F167E56B
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 13:37:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234044AbjA0Mh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 07:37:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233959AbjA0Mh2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 07:37:28 -0500
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95D4B485A4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:37:24 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-4c24993965eso64624697b3.12
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5JZzVHCreXAUwrytEOdcDit63iUnhb0koXp2sufhb3E=;
        b=F/s3lopat6D1wKPoicRdDcIKf0tcxRBUjqO6F+JqPEvBSFNB7vgF/Jt458hpsaH3xg
         6PkyDc8u7auDtDzwIYclaa9/PPdrw0f+h6SeqnRf/jgy8MyljCcYo7QmfvM41Gf8+Is3
         O0IEwseDj6gDptV9JeSN9L5hs4GCndY9HkTpD7sL/meTXcsMcX74maQB7RplKnJ52x2e
         EOmpgypInfYisFesJ56nv8c8JuZWKfSpluFNfoTwxDwQ9ZH0Bg38yc5HQIFbthsZdPus
         sMK3UjS13Sy+LKz76ba9eqMLG0wtuvxjyDeNWtSLp4oLaLj9ggzZfqkt4sAFWbqBPNNN
         MBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5JZzVHCreXAUwrytEOdcDit63iUnhb0koXp2sufhb3E=;
        b=yWTmWlu+y95x8ATLNJz8jJbWFPjEk+u8Lrv3e/0tU0blmwxegWrhuMZuSIRH4Hgkfq
         pH+c7c+syOHFWk052iFxUcOQc8mMYBEtBxvmvGN7D3tpseFP3WVituashTBk9uu6MnKR
         JlS53a3rDl2au+bw7mgw4KAr/2CdFAtfDHFn96oYZBFvIzaMl65ilVeQG55egMF6clyG
         4NCzqpn3gQW0RaOiVcJax8WQvl/hTByJbkPGekaYGRfXz9o+vtYMWuNkszfwypJ20vCJ
         1qewVa5KsnucnKjmHNlKdVAYVOmQUemmAWswgi2BjhC5uUcDj7C7h3sqXrhXPt0H4hMs
         zAuQ==
X-Gm-Message-State: AFqh2kp30tYD8geII5RrEf0DaNdf1OvGo6eGE/S5Gh6IXqldkCBozNrU
        SQpvmeUGIBxHY1A4sRl9ymy1NCQNwLGDS++u9NPaEw==
X-Google-Smtp-Source: AMrXdXtOWs3Mx7UlXuvM1S6dKOuLB6/juGXXYVPUtV1HTl7yRgRNErwMfFAECgGi4jdETuNKGg3+8Yd/24V6BVY0v5Y=
X-Received: by 2002:a05:690c:39b:b0:4f3:8d0e:edce with SMTP id
 bh27-20020a05690c039b00b004f38d0eedcemr3525869ywb.185.1674823043852; Fri, 27
 Jan 2023 04:37:23 -0800 (PST)
MIME-Version: 1.0
References: <20230120165103.1278852-1-robh@kernel.org> <167423655094.352486.17564121663586668814.b4-ty@linaro.org>
In-Reply-To: <167423655094.352486.17564121663586668814.b4-ty@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 27 Jan 2023 13:37:12 +0100
Message-ID: <CACRpkdZwmHyZNJKOatQm9bW-06-RR-oD_5P1-cyr4u1UxyJEeA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: qcom,pmic-mpp: Rename "mpp"
 child node names to "-pins$"
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 20, 2023 at 6:42 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On Fri, 20 Jan 2023 10:51:03 -0600, Rob Herring wrote:
> > Just 'mpp' is a bit ambiguous for a pattern as it allows any prefix or
> > suffix. Change the node name pattern to "-pins$" to align with other
> > Qualcomm pinctrl bindings.
> >
> >
>
> Or instead of review let me grab it for Linus:
>
> Applied, thanks!

Thanks Krzysztof!

Linus
