Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D08826FBBA
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 13:43:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbgIRLn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 07:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725882AbgIRLn0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 07:43:26 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 641A9C06174A
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 04:43:26 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so5289429wrm.9
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 04:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K97UnnWaXHCA9mdDf1hIn381oNSULipsH/KozFLAVqE=;
        b=uC739EFaMMxgDUS+tivWSVZSRcnWkwwN1le4x+on9red0IRY6OpJcxhvoEyYvuyEEA
         EZwWrQkyj899K4LCzidEowO/8WMKFovDqlu7GcWoUHwU/jBFWSkv7eKIZ7aDA7wHQmmY
         j6b204iW3JLcjYH+Z3j8TemfHwBsqRCPn6Bxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K97UnnWaXHCA9mdDf1hIn381oNSULipsH/KozFLAVqE=;
        b=jfzi5ogYJ0FGoI1klKCHmcRa1wzfTpkL2ZDnRfcD1tnVO7ECIqW2sA2i8Jt24XUg3S
         qtJn6G1CMWv3w4hxR19uFs3q4l7qIgFeiCuBTpDP3phX2sOkYSkZYJTRhSDD81nEAJpy
         w/hqtpb3IbaP+vpOoIS10oQyXKrcfCQJcrZvmWk8yrgdm4N4C3qsPlAJTT9MgToS26On
         utC/d0IzUo50Az/T1+zcDQRaj87lF7fOej739XJtZDkwRExWgFhzYJGT5GoV1XoLoFjU
         B2UqfY1iLMng+dcIv0qrcXG1yvJEPkjsDTeOi1sG2AVdT8+eYqDgQFYBdWbJ7WAHciQl
         Eb6g==
X-Gm-Message-State: AOAM532Ndi6kDQNWqKjsAQ6FPamAqshgGNY3Ov8DYaoxuP6HghiFds+E
        iP+0FSxMUuUOAK7r/nohA7GfEX3+k6kOIwsHChyyiA==
X-Google-Smtp-Source: ABdhPJyG37IWlFiaYOgkRi93n8rgESeSK7ShBbYTA+SEBRmjCBrDgr5XFEa4/+Co4em4AH8lFNVgZhmo+O/RaT8u5V0=
X-Received: by 2002:adf:e8c3:: with SMTP id k3mr37917462wrn.228.1600429404823;
 Fri, 18 Sep 2020 04:43:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200918104949.3260823-1-daniel@0x0f.com> <CAK8P3a0maQhfaerwG4KgFZOrUPwueKOp2+MOeG9C=+8ZNzc2Kg@mail.gmail.com>
In-Reply-To: <CAK8P3a0maQhfaerwG4KgFZOrUPwueKOp2+MOeG9C=+8ZNzc2Kg@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Fri, 18 Sep 2020 20:43:49 +0900
Message-ID: <CAFr9PXnQs57acM4GuHVdWxMeArousEjiMPsuUnsATQYjNK4-sA@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: mstar: wire up interrupt controllers
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Mark-PK Tsai <mark-pk.tsai@mediatek.com>,
        Marc Zyngier <maz@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

On Fri, 18 Sep 2020 at 20:34, Arnd Bergmann <arnd@arndb.de> wrote:
> Acked-by: Arnd Bergmann <arnd@arndb.de>

Thanks,

> Please send these to soc@kernel.org for inclusion.

Ok will do.

> On a different note: I realized too late that the dts files should have been
> named more consistently when we originally merged them. Can you
> also add patches to rename the infinity and mercury files to start
> with "mstar-"?

That makes sense. I will add an extra patch to the series when I send the v2.

Thanks,

Daniel
