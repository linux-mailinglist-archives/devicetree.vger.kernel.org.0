Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 783904E6929
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 20:15:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352881AbiCXTQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 15:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351183AbiCXTQn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 15:16:43 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E9D7B6D0D
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 12:15:11 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id f38so10206895ybi.3
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 12:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Z0LeIn5cVeaYNuaJmEd4BGZ3EQ0592UmRlXh68ATPqU=;
        b=rgReT6OdFEsgGhaCRPpaJAOxQ6k+YnrdAp94eYBCESWg/9udF4117hEuJlxSJPOC3n
         vN5LWCw2vn6aYdBkD6+NczFFu1EH+tpfc1VIZnqq7r8Er81CQcQEKZDO/pUYZV+qFaaV
         TY4nHOcLifwed6u6PhfLO2dV4lW7CUX3RTW5DNRCY95siXGUUqLzLnpxS+Sr1LEhLlPC
         Tf7Nzx/aZikfnSscPzmqdA/ATlpTur9R3tnaKf2P67Zg3CQ7YwVbccbdJeFGgsVQq7Ni
         p0faoI9Ud6zQVy0UztMQzsFFc1RrVzsxx7JXChrdZtkJIV2n1zEsGmgHN4FADvMVWoKc
         Qigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Z0LeIn5cVeaYNuaJmEd4BGZ3EQ0592UmRlXh68ATPqU=;
        b=epv4iGabfAbGwNesmgS82cI65nxRSzvk0uwrXmJZmZP8Ppkf5arKLChA8ktTKyKBCy
         +cT5W5TLUWOoX1WyWUFJvDz0hcJUaheRxenyZJw0ld1XAoWCUnJDdJ4a+QWcYkaRJfyv
         39CVfNh3/l8enNAZrlfnDCeL6m3LGX7PzyGGJOjlH90NUqIi/Prhd3OQcze5Kp4aQ/p/
         mXMiqSLqc8Bx5wC1cf6nviKyrz/9Ljz2IK8KrbUpdnrPmkuRP+ZByJSHSq92+zYR5Cr4
         o+t0HesnxLwxb4dLDBOTEQDwcLIoo0oxeuG82JFiays4AFfpuKHZy7rTqVHunf0NVFf7
         oECg==
X-Gm-Message-State: AOAM532nu0vjCp4eMNuTHAUbYZLEgDxBlk5acvOlOwlGqoDGYUGIIZTn
        TlE5CwVPq54PuYZZeTrpewJFDxd3ZVjncMvom5JB0Q==
X-Google-Smtp-Source: ABdhPJz8H7eFv8w9/IGF1if3KqlcAAovm/FyVXAWyxcW0GbUNS5f/71mzOOXdpyo5cA271dh+/Kp0QW7hLfVJCLDuus=
X-Received: by 2002:a25:d088:0:b0:633:b902:2d29 with SMTP id
 h130-20020a25d088000000b00633b9022d29mr6003839ybg.626.1648149310377; Thu, 24
 Mar 2022 12:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220310140542.7483-1-arinc.unal@arinc9.com>
In-Reply-To: <20220310140542.7483-1-arinc.unal@arinc9.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 24 Mar 2022 20:14:58 +0100
Message-ID: <CACRpkda1dpxzUuExEHeJn4i=Vcfiunj4Fmup+0y5un8peBUPCw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: rt2880: add missing pin groups and functions
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, erkin.bozoglu@xeront.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 10, 2022 at 3:06 PM Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc=
9.com> wrote:
>
> Add the missing pin groups:
> jtag, wdt
>
> Add the missing functions:
> i2s, jtag, pcie refclk, pcie rst, pcm, spdif2, spdif3, wdt refclk, wdt rs=
t
>
> Sort pin groups and functions in alphabetical order. Fix a typo.
>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

Patch applied.

Yours,
Linus Walleij
