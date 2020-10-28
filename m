Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E08229DF91
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 02:02:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730196AbgJ2BCg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 21:02:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730932AbgJ1WMr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 18:12:47 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4249C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:12:46 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id t11so1040299edj.13
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pg1Awte/AcCE0VTpWWjF/X+y57TY14JHAwwH73vbeZk=;
        b=N+BWrrYZvcw1eAZEn4Rkvla5ZhdaCVyBOuc8pxi/ev9ojf4qiOCEoNyr4LednIWYHi
         MlXTPk/ebU2w9VwNP9NDCEXpqBs9v3FJgjkxG5NkxgbF4ypLsbxhhNuRAamoeBEYIvDZ
         4WwqwTLFO8/Lg/hMFBrzaUDOLEPyp9MUoNlhitc45ZZUizXRNqtkXgZ86NHnq9Ox7wUs
         dkNnJgm9/GOpasXFOpdXPHuXt6fXcFMpOXN8xuP9tq7xeZg+bMd15zN4cJV9n+e/3v4Z
         3vN4N0knYEjOqDqfAjOkS4tpkW+PpRu1mF7YEtuGLqGpOxgwXsifpbnuGEGmswuatJBI
         LW2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pg1Awte/AcCE0VTpWWjF/X+y57TY14JHAwwH73vbeZk=;
        b=peAwwXsnid7TQG3T731vT3GNFrl3C0UHpg52ax2bUTFfOx1I6CDt/yOcbc0OvxYKeu
         DLNdGmaMQR2HR5NnPoe3Bsu2x7kcQOu/JISkLjA2n47Z62JaOo0eddjaxfpcQaVz/VcL
         VePddTWxbCt0MZrdrcHHyZtlz09pJsZXcgIiLv3zo8R+X8K9Q492A5iNQ83hDpXMswtc
         NJDPyN46Nr79uwhRGbFclqs9Gb/1sc87+8lecO8AUMN5LKaUpUDazbtQihv4PEQUcJNy
         e4UsuWDtQzuTMZsE6MZ48NXmt6InqNo68fYaxJsqW01Ujq9kNQPasQ8paFirbHaXHeuv
         311A==
X-Gm-Message-State: AOAM530bLsJcFRgHgLqvKQASTUVkA7nk3RbAXQ8Mcoi95ENrqJabXiIl
        10uXdXK6TuaXWOnfBA8mZ1bAw0lXCmZczDkkwANrKLYavhc=
X-Google-Smtp-Source: ABdhPJx66MvROMytz8Io7gwu5YHeqpdaA/k/cNh1NDS0LzJp5+8ZB4Dy8g7ogYGcrYnupMYog5+IQGiY3y/cw5WxoM0=
X-Received: by 2002:a17:906:3146:: with SMTP id e6mr7958530eje.363.1603903015706;
 Wed, 28 Oct 2020 09:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <20201028085748.17388-1-vincent.whitchurch@axis.com>
In-Reply-To: <20201028085748.17388-1-vincent.whitchurch@axis.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 28 Oct 2020 17:36:44 +0100
Message-ID: <CAMpxmJV5sorE8xPAynmc8mtw8aNP_3wm8DNSgx-Wc_fV61jCaQ@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: mockup: Allow probing from device tree
To:     Vincent Whitchurch <vincent.whitchurch@axis.com>
Cc:     Bamvor Jian Zhang <bamv2005@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>, kernel@axis.com,
        linux-devicetree <devicetree@vger.kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 28, 2020 at 9:57 AM Vincent Whitchurch
<vincent.whitchurch@axis.com> wrote:
>
> Allow the mockup driver to be probed via the device tree without any
> module parameters, allowing it to be used to configure and test higher
> level drivers like the leds-gpio driver and corresponding userspace
> before actual hardware is available.
>
> Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
> ---
>

Applied, thanks!

Bartosz
