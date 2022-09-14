Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A4E65B862B
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 12:21:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbiINKVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 06:21:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229767AbiINKVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 06:21:37 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB4B66E2F3
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 03:21:28 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id e17so21523697edc.5
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 03:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=SPAF5hoaiFVAkY/WsLhdQk3BcWFtQ7a/5C8YkM1BjIw=;
        b=QWnGv+shjcwg4W70DZrhq+r4hVhfMPl6BnIOdonFBtlS/Pk1/OelW0UBgPOV3vlACf
         ioJ+jgAfsxpsVBPqopB+yMNroVNPF7GTbWgxkewFthBo2I7okCZhVrrnnptlb0vMlQU7
         o0rXqEvaF2jA1EMvLx8W9CVarvtzmMv9kIvDuz30bNKYOHBH6rZcw4u26zQM4JXBTYZD
         M4QH1IXNukGP4IWWrhPMZuSm9qA6CiKzWDh5ZCFnAd4akMnnrQyyzr8Rn+c8tCfY+L4s
         Mx1bj1mcVOxBVG5HN2eJJyAUC/20eJ9KJuhR7YOk8Lp+pYh6PrpEW8DQ6rTH4jBp3LJ9
         eCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=SPAF5hoaiFVAkY/WsLhdQk3BcWFtQ7a/5C8YkM1BjIw=;
        b=sJydvS94rSItl4UaOGZmY7CuKw1ZlZSblaGPGLhifor4blDtLYtzRBsXOlvBHV1kLY
         8io6DKZBhRA+NRPIVINpN4oXfK43BGwTu2Apu0xduL3P49xsrqnQzuKgYKS0qE+ItiAM
         kCVF87YDK77GW4QKqyYotY8GiKuosy4BYRTliIketbN/XRFtw+9pRo/FxdIhAIIkni8o
         nt07s/tUzn5ySRuwk5eF6qi/K1T5bP2p8TSvcTgEVNnYAZ7kGURj7aO4Y+Q83MLdnSD0
         /YTAlJl3moqPFwjg7qh/Whz6AIGFmxX3PUCCeaWT5VFsQoH2t7LOo8BbROrhs5fiIxB0
         St2w==
X-Gm-Message-State: ACgBeo07rm2yu3KJAkPVK6yeex32puWBWhMIo/bR8QlzUTmEF/YG5C5L
        ZNmZBM6/RTmBP1FqdHomE4EtSCxQscberVk5gcOxFg==
X-Google-Smtp-Source: AA6agR7wytS0FmUM8JeHLoMN29M+7pRVF7ZaiQjrJfdDoekZisRpa00u54sk9yuZ48m3e8UIOTsJ3+TLANFnZ7HydrI=
X-Received: by 2002:a05:6402:4517:b0:443:7fe1:2d60 with SMTP id
 ez23-20020a056402451700b004437fe12d60mr29891214edb.133.1663150886861; Wed, 14
 Sep 2022 03:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220912061746.6311-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220912061746.6311-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 14 Sep 2022 12:21:14 +0200
Message-ID: <CACRpkdZxhbjTCagG8s8veNLfMuwXt2RhPpZPL4gPuABV=jDj5g@mail.gmail.com>
Subject: Re: [PATCH v2 00/40] pinctrl/arm64: qcom: fix some of Qualcomm
 pinctrl schema warnings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 12, 2022 at 8:17 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> That's a set for some of arm64 pinctrl bindings fixing most common warnings.  I
> have a plan to continue this for remaining arm64 (sm8250 needs updates) and for
> arm.

I applied patches 1-33 to the pinctrl tree after I saw Bjorn was happy
and has applied the DTS changes.

Yours,
Linus Walleij
