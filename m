Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 808E8219648
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2020 04:31:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726129AbgGICbQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jul 2020 22:31:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726107AbgGICbQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jul 2020 22:31:16 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA73C061A0B
        for <devicetree@vger.kernel.org>; Wed,  8 Jul 2020 19:31:16 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id e18so740989ilr.7
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2020 19:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y1aFB8ecB2wmH9T4OAlgM3uPIr3+7dTGswq2KZGud10=;
        b=LHgaqoATqobXsJ823bt6UbEz6EFOF6myqOpjQDAnwqhgXKl07w4nHw+JB03BZYlt2X
         BNH+dH0z6LmpBnHFCumuSMuAdzaEP7M5WsxWs3gQu7DQ7dgritCm3xWZ+CHEUxizjiLP
         WTPrkPBuUAeyMQ64PvdBWCyu2vQkgWzCqizQH0GOGKHXYvYJaNuKqcM1H8eMJwBOmZRF
         7abA8/E8d+8fydzTVcEVQ7JMm7doNMOrPww7G/vZcmpETvsROzdtGumcGiL1jGG5x2QH
         YlRQ0q/flSV88Gf7LJiNjzISn/9i6uirwLeNNQJGZuXCHNK41ap2wqMgSIyGoNq1RLMV
         bJOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y1aFB8ecB2wmH9T4OAlgM3uPIr3+7dTGswq2KZGud10=;
        b=gqqukVEI73+RB59adYfiRexchd8UuDcd8Uz/OcwhpeAjP953zjFTGbw/hUyXAjleGn
         6gvGo/UqiTrIggAhZDmldlCEMDwUGMPjEbFKmh5s3EBgRMq6wz+K0QWQXNSVj3cx2+hV
         Ecj9ylKTwijixwe2TAURm+5epxAdKIHyE/iLmb2K5iGsNvHwgorOreKqmrKRICMPjl4l
         uVq1zcvT09BrIOWxHo1xzcGSzrQ4lHfFYKv4UeYkZLvhw9oFnbkCEFDkYqvnmTsNn03d
         HZlVCvkRyf4atq4HisAq6z9po0QKgw73oLlKVMK61JZ4QyRq4+WONq6fQIBjjCLxZSQA
         iMPA==
X-Gm-Message-State: AOAM533+SyFV5xBMHyVUiFV+ohLefTzwLD4T9vFO/7MuDTBpMbd4GpjU
        Q/EU4uDjsSd+64Zc6z2axlN0XLuc5iCjCAmEiQoS0L7b
X-Google-Smtp-Source: ABdhPJycmG2v/dMRqlo4y4LjYnpAsyQqnOVG2LTg3fO1f0wSLY2ig+oxacWew56SN7C4tQMpaHBJFn2jujQh0be0RaI=
X-Received: by 2002:a92:dd02:: with SMTP id n2mr44851812ilm.257.1594261875306;
 Wed, 08 Jul 2020 19:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200708113233.3994206-1-tzungbi@google.com> <159422758800.28431.1053466753613230176.b4-ty@kernel.org>
In-Reply-To: <159422758800.28431.1053466753613230176.b4-ty@kernel.org>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Thu, 9 Jul 2020 10:31:04 +0800
Message-ID: <CA+Px+wXPoW-VU-SXSZoBdMY7zSxWf3qxWJZGOE2hT4riwT8XtA@mail.gmail.com>
Subject: Re: [PATCH 0/3] ASoC: mediatek: mt8183: support machine driver for rt1015
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        ALSA development <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 9, 2020 at 1:00 AM Mark Brown <broonie@kernel.org> wrote:
>
> [1/3] ASoC: mediatek: mt8183: sort header inclusions in alphabetical
>       commit: 4dae01c2e5df7beb8dfd5deb9560e42f19d3cfb7
> [2/3] ASoC: mt8183: add compatible string for using rt1015
>       commit: ab1ba5252f611c0efabca5fca81f5717445da47b

I am curious about the 2nd patch's title.  Did you change it from
"dt-bindings" to "ASoC" intentionally?

I am trying to avoid using the wrong title prefix next time.
