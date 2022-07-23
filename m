Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16DB757F002
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 17:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237850AbiGWPQi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 11:16:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237990AbiGWPQf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 11:16:35 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E933210FEF
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 08:16:33 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id l14so5402251qtv.4
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 08:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1YtoaxKMgqFbgqvJGmE9UgUWogTVn2ODlS5NDKP18O4=;
        b=l70Mjul+h5Radj6oYylQbwVHGY3QUu7zaSKdRfgIGh0bM0TzCyjqOhUar6wHErd6EX
         t5Bm0eJw4hItL8gAg+3Z12HnzpdvlWWBJ+84BbqL+VxgCpMq4rLb7uA4PUPeABcOX3CN
         yiXg8uBQzgmRLG8m7/c5+XCPbIJDEBv+OkDC+peI5Gze3/5JN9ORxzhaP9/d0XInj+No
         vrjxrQuwX3nv97nExdt+/UfxJycoa69OoiQNamE7+6nTQeuunvFHMk2+D4uL4rg8NQDk
         4UxLEdNBHUsZz3K2MXZbFW3/mwWmWrs36Axtnc3iKq/0AO6xTeDxiYArdfmzwroYFE79
         MIVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1YtoaxKMgqFbgqvJGmE9UgUWogTVn2ODlS5NDKP18O4=;
        b=VPK/1Kxo0PmXxWQJ7GWnTTF33T1C6nxlOkskBL/XHjJZJ9hqUYiqVuISsOo5URUY/m
         Cf6bTgCfLbc6bhF0yhKfcgWKgUalta5T7/aRiWnKRwZV0uyXPjZL0gcalekG0K+nesXg
         MVj3ibOYelsOv+0n9GAd46ghg45RB0A8KoR7eFQcfGjbaiquJX0zBVJ71TmwN/Y7D9W0
         foGMj01Fky9syh+x9ncHSodTs2Hwx908H4FcioXwZwk3utuVdK8c1CjlSMI9eZ+6HjNp
         ZhpffWJ4tZ164ltIon4wLHc4+u9Z0x/8DHY/adCKPusStleOiBnIhMbHAN1jpGUE7CH9
         RtPQ==
X-Gm-Message-State: AJIora+xFZjqg39skoLYubpaMINo8vrA7gej3itdc1ROPsMDK9tCyuBc
        u5pgxATJlQ7Ec336taaWRjLIZMpVy3/Z8LfaYHlDQeoe8BQ=
X-Google-Smtp-Source: AGRyM1vf2WiEVwlCT9YnJ6xSz8XxbYlaFhc+nO7qQld2E/tiZpgFlxDUCYVy3R1USbP9Fxb0o+uxaD6jJVvwa2mVA/Q=
X-Received: by 2002:a05:622a:178a:b0:31e:f9ff:c685 with SMTP id
 s10-20020a05622a178a00b0031ef9ffc685mr4423061qtk.62.1658589393102; Sat, 23
 Jul 2022 08:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220723145558.25210-1-ansuelsmth@gmail.com> <20220723145558.25210-4-ansuelsmth@gmail.com>
In-Reply-To: <20220723145558.25210-4-ansuelsmth@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 23 Jul 2022 18:16:22 +0300
Message-ID: <CAA8EJpq+Ovuz3zht+=2KKmXE3gB55JidAYEs8dsSNZiggmA5=g@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] clk: qcom: lcc-ipq806x: use ARRAY_SIZE for num_parents
To:     Christian Marangi <ansuelsmth@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
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

On Sat, 23 Jul 2022 at 17:56, Christian Marangi <ansuelsmth@gmail.com> wrote:
>
> Use ARRAY_SIZE for num_parents instead of raw number to prevent any
> confusion/mistake.
>
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
