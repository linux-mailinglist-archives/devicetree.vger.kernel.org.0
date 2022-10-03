Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA0655F3832
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 23:59:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiJCV7s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 17:59:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbiJCV7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 17:59:45 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D872E6344
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 14:59:42 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id e18so16421717edj.3
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 14:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0SIK8tCoNjigsaJyP1+HHiu3azBVVEgFP3okI/eaJ3k=;
        b=aWOPuV1quDhUmeYp9NcOTH7AMvxC2qODqNDyjz7wMxDYMCZ8m3jMXjaViNnG/E+WqY
         TULHgotUauRa6d+e4v1aH9kJMYETVwyCGFGEx4U9VACk6jje/zq1847iU9kcmKtKzbGq
         nli0q5xy1E2o8v7QPag4z6rg81ZO7Yqi8CFcxpjUpYfXA8v+F9sNv34JjLm2Po56ZyKA
         gn4wVlpWES9dlxoPhcDPjuT4xWM+hgkQjgm3YNYEVrkRo6JSrlLChTp5tf44wYP6UN79
         4aDBawwPHMktSjuFgxt6PVJsfGS8i9+w0KdYP0wsi7PSbh7M8fe3jOfRkJCgyIpJe5ic
         la9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0SIK8tCoNjigsaJyP1+HHiu3azBVVEgFP3okI/eaJ3k=;
        b=8QoLnWDBI91aoSYRUN28psvIW6CWXIdYCjthlbCJN2H4l2HOeCtiiiV9KbcFNAUxOV
         GZ3d+XPbEwHHkoqWzGM+xC08JvOHXoGVJHt2TqLEDT0RfhHlH6n3XkcT2UVT8roPWQ8U
         I/kjU4Uv+ad/3DH17+bA2LoNt0RwY3svuB2zKymdbzY9LJOQYpm/PjLrfaJT7Acj2bY8
         soKY7hsiuK8pILgAP0kTFfNv+tyTUsmux6MZyzGQAbGzZFf6XNu46a+YnprN4pUN6vZF
         FdQ/Ml11XWXRV78hmTMeaFPKkuQta+XHJ80Hc76WucN5F7i9Xuew2e6ENq6VLKWG2a87
         XW1g==
X-Gm-Message-State: ACrzQf36cTKyzM12TMoAmmD5s45ZI4WThU7fRj9y2LEZKWwHL8bq3gcg
        AuSbqjRpXH+9zUl/2kx6Utz3rioKdskzvks3oKOSjg==
X-Google-Smtp-Source: AMsMyM6Vc35m4Q9nf1n1sZmtNjTnfagyzbYCBX/RdutZnCYlhqEuUrhJQGsbcMFpw6JXvX0M8O/dpVSnSR86k1hd2BQ=
X-Received: by 2002:aa7:c050:0:b0:453:4427:a947 with SMTP id
 k16-20020aa7c050000000b004534427a947mr20528493edo.172.1664834381395; Mon, 03
 Oct 2022 14:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 3 Oct 2022 23:59:29 +0200
Message-ID: <CACRpkdZ0KnXr+iQJb5z+Lqn9Mx5NLNzvT00Mn0hCvvcp2jMHYQ@mail.gmail.com>
Subject: Re: [PATCH 00/12] pinctrl/arm64: qcom: continued - fix Qualcomm LPASS
 pinctrl schema warnings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 22, 2022 at 9:56 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Set of fixes for LPASS (audio) pin controller bindings and DTS.

I certainly trust you with this stuff.

Once you feel confident with the long series, please send me
pull request(s) based on v6.1-rc1 with the binding stuff for these,
thanks!

Yours,
Linus Walleij
