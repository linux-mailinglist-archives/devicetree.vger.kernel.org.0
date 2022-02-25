Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBFD04C3B27
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 02:41:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231905AbiBYBmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 20:42:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235300AbiBYBmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 20:42:00 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E58C28F443
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 17:41:29 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id d17so2211938wrc.9
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 17:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+0aly+EpU5c29EdYXAbZBm+EYfsQisP7ntPk9ELmOPI=;
        b=U6Esquhs6xzZo1G1iqSp/12AoCcrBBUsjvqlKoAMjSrQjE16KyqDFJm8nSDQfQfSyQ
         dOnJGGgKI5DFhN2CD9VwP8rfaHeHxw+CY1rmT01bWlpJ17IOqYxg8MjWUnWhFjrpYGlJ
         mh4s39sJaBlyrXS6TTtFACSMMMzJEUZo+2ybw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+0aly+EpU5c29EdYXAbZBm+EYfsQisP7ntPk9ELmOPI=;
        b=U7zAy9VOC0FRlGJGnQUkvRpCOLzaszdLwErqKAyp+hjTnfx2avMEx+t6xOGqVcCDX8
         3irtp35ZS/EYE/49BqBXUICYeHk13MWjpaxe7Dqdk9FAPudMryCGKWaBIP5xdxkOV52Z
         V7XKGM2rvMHb71K1epiniz5vj5TE/ZINuBZ9ccfLWb7OhX3zIkIIhVYuGeNXIVr6qJYr
         o9/YRxHZZNnv4HEomd9AUJnZHXboqiQ6vo29ZvcbfxjVgSc47TIFFuOM6RChJtYT3SnU
         o8OY0885qMGq3JRxXhbLDZWKxw9zJo/sWD/C5r56kLwIXkbJuAcecYHmKqUkVb7UtrSs
         Fbzw==
X-Gm-Message-State: AOAM531JA7sVSNkaifG8U2/AGuI0Xe/5R1c8BDbPhCPvMkOVYm811QYR
        uMDjm4hC7gbkbaYeFx+ZSTntBpTS+ymqznSEgwj9Pl/XvRY=
X-Google-Smtp-Source: ABdhPJyE0OKTeTamLyNYWZfcT4RIf6leHH6LoaGVF5o836TauTjq3YSF9ORLnYIvhnLE0h9TBQ+4hQioY0gJQH0PLrc=
X-Received: by 2002:adf:fcd0:0:b0:1ef:31fe:d08e with SMTP id
 f16-20020adffcd0000000b001ef31fed08emr2395465wrs.667.1645753288042; Thu, 24
 Feb 2022 17:41:28 -0800 (PST)
MIME-Version: 1.0
References: <20220224003421.3440124-1-jwerner@chromium.org>
 <20220224003421.3440124-4-jwerner@chromium.org> <ec0c90b9-58a9-669f-fe4a-73e60df335d5@canonical.com>
 <Yhd8OoJQer86kTZ8@orome>
In-Reply-To: <Yhd8OoJQer86kTZ8@orome>
From:   Julius Werner <jwerner@chromium.org>
Date:   Thu, 24 Feb 2022 17:41:16 -0800
Message-ID: <CAODwPW9_cbsvU3Jf-9G6TSRUwHwu+HKCQug=eJ51tsRFo6HcPg@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: Update jedec,lpddr2 revision-id binding
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Julius Werner <jwerner@chromium.org>,
        Dmitry Osipenko <digetx@gmail.com>, devicetree@vger.kernel.org,
        LKML <linux-kernel@vger.kernel.org>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        linux-tegra <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > I bounced the mail to Jonathan, Thierry and linux-tegra (+Cc), so
> > hopefully they will get it. If not, series might need resend with proper
> > addresses.
>
> Thanks for the bounce. Applied.

Sorry, I wasn't sure how this was supposed to work for interdependent
patches, I thought they would all go through the same maintainer tree.
If you do split them up please be aware of the dependency, i.e. this
patch should not be applied anywhere without patch 1 and 2 of this
series landing first.
