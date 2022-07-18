Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B59FC57876B
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 18:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231602AbiGRQaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 12:30:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235868AbiGRQ3t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 12:29:49 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D140313CCF
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 09:29:48 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-31e0d4ad6caso52654467b3.10
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 09:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=9HxsfhxGeY3FciUvlkyVDmnqs0lPmQ4wJJXM+oWL5FI=;
        b=AJHq+E8qR8K8F+D5KdQ1q2osnACaCKieGlwpFgoHvcqXKWyyv7XkIuBXnLFY7V8YVi
         OyL1o8sRQ+PsmLW6fyUD5Kl6M9GFBkbkIfZBcMl47rw89Ww/7L6pkMsJnrBmdpTO5bbD
         /hK4kwQxFw/4Cc++/K4kXdqcG0ZZGMrSQuwAEpjQt2CFfAF48uqTxsdSh0NoZkHHbC8A
         qSb7mLaDksd7SkhDmqhqIdfbZHYZf6XjFk6IpSREJNddCz4eE0WbSDnkRD5l6iOX9COU
         AniCCD4IaYe3YozDW98kbbBJDe6nOdXAJQr0rLzwDis4zSmeWqfo1UITss1cuA3Ect6F
         S2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=9HxsfhxGeY3FciUvlkyVDmnqs0lPmQ4wJJXM+oWL5FI=;
        b=l+l2uzN8YBmtik5iMQXba/OyKNKl2J4v59kxmK6q5JrLoWItSkU+Un1GBIap8HYc+V
         peSKUDX6ni1a+XsrO2+3/q9M1cIGLNaLDfVXDlSv1nPnx+xjB/+VbXy96w2pQDFY0WST
         sbJGsyMo+tuJ4cgsSA3Kmy/titmXi5lWNSUoYhAl+9ofjLWx0wARdiZjU3+zIId8DISM
         JT/63tH5cdtaZ1XVi82e3hbkALwooI05tGO3zRfIil7m8ztagG1zPdHQcDAhfLEDcOnK
         pRe+7uK+WxDVnhoj3COnldq1ICoTeSmibnyO+uBJGA8YWQ07qyy30zm3EJ/LhUaIYKjz
         MVTg==
X-Gm-Message-State: AJIora9wvlptHi93+uFMqBIb+BSMF5n8xL5ecoZ/B7c60qKKMMDmQUDA
        lAv51vcBZkaR88embO3ZkwGSTEYO//I1Gv0YEV0=
X-Google-Smtp-Source: AGRyM1uCZrb8u98fj5sxeQcLNHsHy/EpioNFD6cKFgp01YiR7ONvscYkkZNwFGROE6UYQSVDW3wMrWm6tTg3/MJc1Gw=
X-Received: by 2002:a0d:eb44:0:b0:31c:88fc:ee1a with SMTP id
 u65-20020a0deb44000000b0031c88fcee1amr30378494ywe.90.1658161785570; Mon, 18
 Jul 2022 09:29:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:4395:0:0:0:0 with HTTP; Mon, 18 Jul 2022 09:29:45
 -0700 (PDT)
Reply-To: xu.99cn@gmail.com
From:   =?UTF-8?B?5b6Q5YWJ5ZWf?= <phylissway12@gmail.com>
Date:   Mon, 18 Jul 2022 17:29:45 +0100
Message-ID: <CALaA9CJuODnYUkXMZ=2L9A=7RSi8surgfUHJwyEuHJvDxwL1Qw@mail.gmail.com>
Subject: =?UTF-8?Q?it=E2=80=99s_very_important_message_=26_Can_we_discussion=3F?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hi, am Xu from China, How are you?
