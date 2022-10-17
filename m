Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF43A600CA1
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 12:41:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbiJQKlf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 06:41:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbiJQKld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 06:41:33 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6E545EDF7
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 03:41:31 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id b12so15403878edd.6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 03:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PeSS07urWbJknYYh9S+Gl4VbusNvBxc8aZgJjcWaYwM=;
        b=jbz8oO0MSnhcz7V3riKIDTx28bHo7jGJor97Ann8KB3oQ7/HG8Wm8ViogwV2Flyy5M
         Vhbd2UGdEiNiwj9QpoBFocX6Ar17DOlEobw3hhFApYRAcvJhM+stRrRNJ9buTTHjyjL+
         202HjJJpHad/2XMmhKAYvDix7XKTcs4s4EFaXhstUrBQa99eZh9QCM6f0O2k8cmWYuEx
         9E0JjCL+SfmL5YnUdvuljTOWQh9ZwVRRSLUQFndvKag8JKpJ9MGa4Np5D79ezZ2yg6Yd
         Uk/alRMp/F5daiQ+AJ7GwQCeoFb2dpZe/F9hbwGXyZ4+C/Gz6cJPal4RBuRDpyNzEQDi
         xxVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PeSS07urWbJknYYh9S+Gl4VbusNvBxc8aZgJjcWaYwM=;
        b=nhiOG7ODE/CEOkNpZLJR7WboUJ8WwLB/ufV5+DEE3PU+LW/V27wI7R83XNlYHmLXfq
         1PmFT5S9NQDAI4Ujj/nk4fvTkSj+afG1li05uV0U9/QVra7qRfQztfjcw+evC7kTPJsn
         CjMmJHAUhOumGTq926JJ6H6ETYTNcog39sV/bLG9NPN4ltkekItY1DBQB4bIGG9WyF51
         kFpPt8qjzzJJekt04uCki4KSAlO7ERJbBVY3YknhcR6zw44zjbEm9md8PpKBy6+7XSkt
         9mYRnh5wiBV/eYOUvgd26648iztPBGHGW9tM8eIOZB/5SaHoVFa+923j9z+u85gKA4xo
         KU2Q==
X-Gm-Message-State: ACrzQf0q9VcaHMseijcbSwyAxQvi6u9qfXpfHG1YGRZnnKwMByQeTwHd
        ktDSINJjE7WhHqSYW8ggH4DvQVXd8ZFo+T6WbN7D9w==
X-Google-Smtp-Source: AMsMyM4EEw92nZBT5I6DpZjlbdQWMniiwOciFjHygmdcSTosLYxzKpoImxJrkXzUoP6U+g7wmaqlaY+zc6+IwSqdrg4=
X-Received: by 2002:a05:6402:448:b0:45c:8de5:4fc with SMTP id
 p8-20020a056402044800b0045c8de504fcmr9673748edw.133.1666003290510; Mon, 17
 Oct 2022 03:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <20221005-mdm9615-pinctrl-yaml-v2-0-639fe67a04be@linaro.org> <20221005-mdm9615-pinctrl-yaml-v2-1-639fe67a04be@linaro.org>
In-Reply-To: <20221005-mdm9615-pinctrl-yaml-v2-1-639fe67a04be@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 17 Oct 2022 12:41:19 +0200
Message-ID: <CACRpkdbaZRNV56+x=gnN7kKnesaf03hN4nr35qjT9eV=_dKkew@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: pinctrl: convert qcom,mdm9615-pinctrl.txt
 to dt-schema
To:     Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
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

On Mon, Oct 17, 2022 at 12:23 PM Neil Armstrong
<neil.armstrong@linaro.org> wrote:

> Convert the MDM9515 pinctrl bindings to dt-schema.
> Keep the parsing of pin configuration subnodes consistent with other Qualcomm
> schemas (children named with '-state' suffix, optional children with '-pins').
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Could Krzysztof include this with the rest of his massive DTS and schema
cleanups and just pass me a pull request with all the qcom stuff in?

Yours,
Linus Walleij
