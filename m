Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C86F94FBEE5
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 16:18:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347291AbiDKOUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 10:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347246AbiDKOUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 10:20:17 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F5F23C70D
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 07:16:41 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id a16-20020a17090a6d9000b001c7d6c1bb13so16984376pjk.4
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 07:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=PEy8tcuAlYMkke8TgkqlERlPb3pgNji4PY+pUmrLkGw=;
        b=ba3DOkmeZn+E8A5KDowz0PVE8A/k/2CKwNw/vzkLyewBUijiIBiJEiGQ6afqFcRWjh
         Nfojqv+YnMXxh56e+umrMkU6vHvE2A9GggflBHqwkTrcdR2RaayFZPlNZ+pufiU9lWVh
         PJA+PLUnkxtb72q5owBrb97lqqmccgiw490GZY4LlV8x4tUqvPEoQ56bjNlR2mN5Amu5
         h+JXvVFEG5qfDb/VOoKJQBuINLTjqcAVbbRGeS6yAJHlc9d295rWvfyzVyMwNOIuFmT4
         GY270XgjD4KqejIH1sJ+8R5s0Ow5XXBOTvGxhDxOTPEFnW6S5RmfLcEK4JOJ5mzajPLB
         R08g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=PEy8tcuAlYMkke8TgkqlERlPb3pgNji4PY+pUmrLkGw=;
        b=CTPQb24H6dMGzMQjNyG1JpPmmffKsMlqgrnJe3HaYXw2BTOnCEaEydbrublqrYqflm
         VxZtE6r4GIve6sWeoBqrAILk5CUEyEJgbbRflMRb3n5AEGrPNfDpjFIaNjiVvDsMxRdA
         eSaMYDjWsVWtI7YtsN5ldSdZhr51+VC3QOgWGC/VtHAibpBP1rn+tTLl4Cu0qXx+/4FW
         QuC3DVwyXbqlwpNOXKaCv/GzV4VDkFPyZukYj1dTz3uJ6j/guVX1o8T7Rjfvgzgwgfhq
         yy5CPCOQFa6ghb3lXXvgfCLbrmmXp4UIXQDA2U/uXg1Ri94U4Re3qHMez79/iu/v8WlS
         k5OQ==
X-Gm-Message-State: AOAM533HNfb3xF1aAybgeTLxQkiGmQB3TRftdVXQLr6dB5sqCzauj6EG
        2zIxwOVvm6US08oBonDSxN4O+EfiXLq11/blpkU=
X-Google-Smtp-Source: ABdhPJzAvoU9yv1wtrwVonotG/yycegrvA9ucVnJT5t4E9tE3obRikZ4HXfVrpIMLWfx9yy/txpGfeGa0i/PUCnLfVk=
X-Received: by 2002:a17:90b:4a82:b0:1c7:8a44:e0c9 with SMTP id
 lp2-20020a17090b4a8200b001c78a44e0c9mr37235479pjb.102.1649686600075; Mon, 11
 Apr 2022 07:16:40 -0700 (PDT)
MIME-Version: 1.0
Sender: engineertonymorphy@gmail.com
Received: by 2002:a05:6a10:9142:0:0:0:0 with HTTP; Mon, 11 Apr 2022 07:16:39
 -0700 (PDT)
From:   Aisha Gaddafi <gaisha851@gmail.com>
Date:   Mon, 11 Apr 2022 07:16:39 -0700
X-Google-Sender-Auth: a2SNg5bRbeC3jaTV7YSgd0IfEtg
Message-ID: <CANN0nC7og+CQuwbECJ-vvP8zrRVJkegMsJT1FQipVT4fLKkqTQ@mail.gmail.com>
Subject: Your attention needed,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,LOTS_OF_MONEY,
        MILLION_HUNDRED,MILLION_USD,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,URG_BIZ autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

        Aisha  Gaddafi,


        Assalamu Alaikum,

        Greetings from Aisha  Gaddafi,

        May i  use this medium to open a mutual communication with you
seeking your acceptance towards investing in your country under your
management as my partner, My name is Aisha  Gaddafi and presently
living in Oman, i am a Widow and single Mother with three Children,
the only biological Daughter of late Libyan President (Late Colonel
Muammar Gaddafi) and presently i am under political asylum protection
by the Omani Government.

        I have funds worth " Seven Million Five Hundred Thousand
United State Dollars" -USD$7M.500.000.00 US Dollars which I want to
entrust to you for investment projects in your country. If you are
willing to handle this project on my behalf, kindly reply urgent to
enable me provide you more details to start the transfer process, I
shall appreciate your urgent response through my email..

        You can know more through the BBC news links below:

        http://www.bbc.com/news/world-africa-19966059


        Thanks
        Yours Truly Aisha
