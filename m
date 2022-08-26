Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9443C5A299A
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 16:34:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343887AbiHZOdK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 10:33:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344482AbiHZOdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 10:33:09 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E33E186DF
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 07:33:08 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id w2so1769412pld.0
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 07:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc;
        bh=MoYO0aV4Sdt+1lFREzXlZRwm/vMSBTGBOAkrIfrb15g=;
        b=CT/xwp8bf+4WnGL54CNyZVkKySUwDtUNmpjzpWsUyLOkBg8sDDdOeo80hAORi+whLq
         sMEt6SfNb8fzZ/lW58Zxz7NMrPe/IxhVPmObYrXUNgSerKsYN4hGPzf/JSZ7hI3w1m7I
         av7swLyoioe1Kc08F6JDrl/BvN2m6DS8uNXjLQvTyXSLVG5pOAAXF6X2LRIHR2vJxTrH
         DtLAB/OLA+v+FlOftUF45005OE7IQES8bTIxlWWNe9+r3PDCjF5OGUmEsUCapuAgMK0S
         jTV1SRf3gAkWtYXgEVs+sIuSK6tELwPF/xoeTn+V0fKMvXaSdzvi49AlF3HNzBLvregm
         utcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc;
        bh=MoYO0aV4Sdt+1lFREzXlZRwm/vMSBTGBOAkrIfrb15g=;
        b=we5K3zmiNlzp/Exjk0xZdEGTTsqixkklPah5mNGGmX0n+Hv1bS9b1yIWnKKjDxxk1O
         dY+abMXXKxMAOGUXqOdSrSAp3DEKI9AriachXw2AjwbduW54rtmD37ikImfpQB5gr5aZ
         cXe5zD522EG59X4T1qxszWMfnR60X4Ih9rE/MGzd/QZzk7+fEJMgS7UzR4Bjxq38Lyf4
         H1wIKzBNwtXaqVRrZ0OrrrcYakXmjhUrLKqCu1jDv8qs0QkH791WCGRFIiCgZNfa503V
         F5UNmVpabX6pU3C6NPh3MhN4Lg6voUzih6IDhI1/j30wWmztqm1rWyP6CxuA4tUEPPkK
         uzUw==
X-Gm-Message-State: ACgBeo3xpBzM3aE+1QjH56VeGBi6y/Ks8Za/fuPdSoFvrf7bmo9wxYOL
        laY6u9mc4vMfpze+r6TmN+lSwg==
X-Google-Smtp-Source: AA6agR7zB0GXZEcvFu4C6QCUUhy/MR+Rz11NBBQC8ja8lj3FFezrrr0OxS3nFw6wcE24xBi7lBRTxA==
X-Received: by 2002:a17:902:f542:b0:173:4136:83cb with SMTP id h2-20020a170902f54200b00173413683cbmr3905017plf.4.1661524387807;
        Fri, 26 Aug 2022 07:33:07 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id i72-20020a62874b000000b0052e987c64efsm1871933pfe.174.2022.08.26.07.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 07:33:07 -0700 (PDT)
Date:   Fri, 26 Aug 2022 07:33:07 -0700 (PDT)
X-Google-Original-Date: Fri, 26 Aug 2022 07:33:05 PDT (-0700)
Subject:     Re: [RESEND/PULL PATCH 0/2] MAINTAINERS updates for PolarFire SoC
In-Reply-To: <196dcae3-542a-2cf3-ebee-e7ecc4a8a330@microchip.com>
CC:     Arnd Bergmann <arnd@arndb.de>, soc@kernel.org,
        Daire.McNamara@microchip.com, broonie@kernel.org, wsa@kernel.org,
        thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
        jassisinghbrar@gmail.com, linus.walleij@linaro.org, brgl@bgdev.pl,
        Greg KH <gregkh@linuxfoundation.org>,
        Olof Johansson <olof@lixom.net>, mturquette@baylibre.com,
        sboyd@kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Conor.Dooley@microchip.com
Message-ID: <mhng-5a6ac7a8-1caa-433b-909b-438a1c05f320@palmer-mbp2014>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Aug 2022 23:22:07 PDT (-0700), Conor.Dooley@microchip.com wrote:
> On 26/08/2022 01:15, Palmer Dabbelt wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>> 
>> On Wed, 10 Aug 2022 07:02:42 PDT (-0700), conor.dooley@microchip.com wrote:
>>> Hey Arnd,
>>>
>>> Could you please take the following two patches via the soc tree when
>>> you get a chance?
> 
>> Thanks, these are on fixes.
> 
> I think these already were applied by Arnd. I guess the soc patchwork
> bot does not CC the people on the original mail, only the author.

Ok, I've dropped them.  Thanks!
