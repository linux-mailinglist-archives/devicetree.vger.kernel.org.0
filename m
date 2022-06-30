Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C76545619D5
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 14:06:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234067AbiF3MGf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 08:06:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234040AbiF3MGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 08:06:34 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E9A747A1
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:06:32 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id x184so30610763ybg.12
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zjidKRGkWLmyDbqtBqAJAinsYe9l/vCf4AkKGjC2usQ=;
        b=BkxVjc8kE3CmdY3UuXMxodSsurbPLR91vkyCA7U1te/4mSErQmCR10uYN8dkjCgk2B
         lnNLg6vJkM/FeJgJdvmj+81yacGe1IosO+Pa52wAsMAMZnpnALDeDe9a/C5LPHHHQxJV
         zlemzqhy/zOR7Aa1CX51RFrOuO6hdNN4T8L/A3agwN3a4oKs4hQMLDw4JqV2Bj60I1Bt
         qjFzhTU2D4j07Cebly0tJuLQmZelNh1K0niEZQhbvg7TgMI0nnWl3GLqtln7YvayeM1Z
         IJx6oTRB9R6e5ucw0GD6EWDwR+G9eXSFLHbBvj1A9ALPpfXTAl6NDPeJe1NZRqRt8WUg
         zjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zjidKRGkWLmyDbqtBqAJAinsYe9l/vCf4AkKGjC2usQ=;
        b=UtEnZZJub0KrUThXY197nW+0hY/ms8eXe6LoxsxjP5XwFi7ened0ngol5ii3isU9Yq
         Jt13f4EHwcX8L2deeDtxy1lGYR6hN1FIHtXrxbPZGCuYMeBSQv0xjm/AXcCKRavfdHd4
         LWxbhyc7+HNAggtB1Jc4+oXvXuyXApVyvME5oJeiz4+XZSWr8c4dCU/ZbFmOh/uzRw5a
         5Suoo2mQJpvB341v/QDjt2CbEI9heQJOjfA2XJA3WfkpE9iQwK0kWcksJNNHqXn55oQh
         xYdzSG+ZS4Sps4km8gZhsV1AOQBnRgKv42bD1Mv9Rj7JuNATQgFbvw0OqFYIOjgdy3lT
         K4QQ==
X-Gm-Message-State: AJIora8I8KuHXq1q9KqTu5csMDnQcNCcWwWEf++KXkSwljkUI6G6PCOB
        bYCq/2HxISP8+2YpKwCfje/FAjh1YnKLHrc+3SQ2yNYoWUE=
X-Google-Smtp-Source: AGRyM1vhmWdY6RzmsecjcOlgYydkzYuca0DL2isNKuScPLX4jEndVEamoiTD1h1ihrcnEYETHFa0PpcT4m2/vmfs9eA=
X-Received: by 2002:a25:d82:0:b0:66c:dafa:48c6 with SMTP id
 124-20020a250d82000000b0066cdafa48c6mr9211594ybn.492.1656590792065; Thu, 30
 Jun 2022 05:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220621034224.38995-1-samuel@sholland.org> <20220621034224.38995-4-samuel@sholland.org>
In-Reply-To: <20220621034224.38995-4-samuel@sholland.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Jun 2022 14:06:20 +0200
Message-ID: <CACRpkdYxWzELMRwYSbC4OsR_Xn3QVw7qwdxVyQJh2ah-B7VfTA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] pinctrl: axp209: Support the AXP221/AXP223/AXP809 variant
To:     Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>, Lee Jones <lee.jones@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 21, 2022 at 5:42 AM Samuel Holland <samuel@sholland.org> wrote:

> These PMICs each have 2 GPIOs with the same register layout as AXP813,
> but without an ADC function. They all fall back to the AXP221 compatible
> string, so only that one needs to be listed in the driver.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Patch applied to the pinctrl tree!

Yours,
Linus Walleij
