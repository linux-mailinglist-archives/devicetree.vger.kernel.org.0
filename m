Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B66584E6AAA
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 23:28:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245515AbiCXW3B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 18:29:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238178AbiCXW3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 18:29:00 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20CF1BA318
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:27:28 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id g9so8537587ybf.1
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BuIx2EfuKCIfA6SZfk0m4A4xmn/XxCz2VsdNSnjLe6A=;
        b=xsJiIbP9s+ofFzxTice7QHI0MJEYU5dlCS54RBfUG2x7ytlH3jCMhH0UIoX6WJXXrd
         o0GggbfRlcbZST72KUa5AlCXV8HrBeeHixpeXd6kY4TZ6u22tAdJ1kW3lKMBxDJdskG0
         yBwPgNOpLmjY2C8ZdJizxMiSmJ6eKaeA2rRP8E8iIwSanfZlWykaUiwRwwjP63Zu5Ekb
         vuenltpeigXG/bTxVAVHn+Jp3QuhIqeC7Q0c9Mc1aJNnzTO+DxNqv5uJMgwJWT/q9dMF
         lk7gQA41OZzhQ3/2UlpnqF/XoP/ld9dJn6FtHWaSB7EN5C/i9v/EErCkdxCPv2atUsE2
         P7iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BuIx2EfuKCIfA6SZfk0m4A4xmn/XxCz2VsdNSnjLe6A=;
        b=P13oTXPuomkt7Ffq41kU59VH/3IENgGdtRtXLk9PthJegOkY+cqwk46pYAj0Uyp/DW
         o9tCrc00yRMTZzZRtZ28BLizLAuQZmIaA+8X+5vncDHt4u4aCW4EoE5PTFIsyeiQLEiX
         vc+xowoLOWUWbX1faWviv9Da8m7M+Ki6UIqbzFq3/zLJ+EGP1YEC4DdPVsKUbNiJUh5S
         sIuMQyEfPWZxmp2wR4ftqU2tTY5Ff6spOizUhwljVMvwoleBpUPJMwARI7hrw5jQRn10
         ehmoZorpiejBL4ZHXYSqVeC3gpcXb3/RQURjAeQDw6jINAn/8dY0Po7t52I7MZ9T3R9x
         WU0g==
X-Gm-Message-State: AOAM532VkNlx4U7YmM0nqeMna5IV4VQ9506u150lTD4oUp1gXK9D8cBh
        FR8JA0OaX8EkYp5wtwJDxp+0qHfeUbRYrcav3sIXKw==
X-Google-Smtp-Source: ABdhPJyWfCUBXAFZEkA3vRwgVeXOfZfmF91xcRYtOHQUBNNwmYHrQxFGtrci1QUJV4Ny7aBxm0uVNqOrZbc1BWGS/8w=
X-Received: by 2002:a25:ab64:0:b0:633:6d02:ebc8 with SMTP id
 u91-20020a25ab64000000b006336d02ebc8mr6907030ybi.492.1648160847410; Thu, 24
 Mar 2022 15:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220304000311.970267-1-joel@jms.id.au> <20220304000311.970267-2-joel@jms.id.au>
In-Reply-To: <20220304000311.970267-2-joel@jms.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 24 Mar 2022 23:27:16 +0100
Message-ID: <CACRpkdZodEjzm84zd-Xh6ZFsvu5eNGT_ErXHApaH3MwGB00pFw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: aspeed: Update gfx node in example
To:     Joel Stanley <joel@jms.id.au>
Cc:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, Lee Jones <lee.jones@linaro.org>
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

On Fri, Mar 4, 2022 at 1:03 AM Joel Stanley <joel@jms.id.au> wrote:

> The example needs updating to match the to be added yaml bindings for
> the gfx node.
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Patch applied.

Yours,
Linus Walleij
