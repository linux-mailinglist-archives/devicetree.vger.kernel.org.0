Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21CE479DFFE
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 08:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237821AbjIMG3J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 02:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237615AbjIMG3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 02:29:07 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA6721732
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 23:29:03 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-401b5516104so68123835e9.2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 23:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694586542; x=1695191342; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2hZ3bBvS6PJ0gaaTtw3Mjo6n8oJuQneFLvtDKhq14QU=;
        b=iLsl20J16p5kLcO2E4Ohbp2jK9PRF9GA2NHNw/XL2dqX8WV2B782gpZ3GTgPUpExE3
         TUwECwUo1GenCXz1Jx4MHSWQMU0lv8+mTLP6+RkreC8RogABjIB9n/K5biLyMcKKVMsH
         B96AFZNR5QL/B5PwO+G3kpMnZun0mgZvTj6ovQ8Zw5YQ7IMugvEECbX5jSkc3WAldGk0
         ClYOvuJQDQH+tpcuPEL9kl+fzpVwg5I1IwpMQXdeXvfJnoAFhbilEw4kEKXzzOudR67x
         SjClRD+c8v0gLmxmVFnx3vhTgbaOBx9JqFOGQc2AOJxYM8NdflzuijebFC2s4hdRhKq0
         vzjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694586542; x=1695191342;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2hZ3bBvS6PJ0gaaTtw3Mjo6n8oJuQneFLvtDKhq14QU=;
        b=ZZsZK/cmJ0L2HC/7D+U4pT3AVSYzZHPYelZ0U5QGTyw87ifRajJkoAXr0rmcPgiQaQ
         hR67TlAIMLI7RDpJn50ZuXG89pC9ZBbwmcdX4qzJqVfZJAZN2uBYfbLCqKHPWIzphm5B
         whraQRWgJvKl3c/uWnEdoXO1iO0hEUgQctbiPRkmd/EA8ggVLvRDNmm4PrdVh0Jl2F82
         tyPoImsbvTs4y9VgqRp5KXUQ9hY/mvet5CVVPnd85L527JIciub30w9lzwCLSUIJ+o6c
         eFRQXcSjtlhnIJLhQhzSLLCIFx/DkFyYmta9Yaj8xiFy0gGzIM7XF1tshOcEB2ifMwDE
         U1IA==
X-Gm-Message-State: AOJu0Yx18slh7iT3xhfC3g3b/jwSNWelYlRS6YV3mxjAfoK+mCr8/XxB
        anSCds3PphsdL+D/X+X9zVc1Gw==
X-Google-Smtp-Source: AGHT+IHWkZ+L3kTcnBUHagrcUZ8bYghUlgASuvgAq3bJq/vxSGpLVj8skg6xAA3S6yJlHPRUTz73Ow==
X-Received: by 2002:a1c:771a:0:b0:401:2ee0:754a with SMTP id t26-20020a1c771a000000b004012ee0754amr1161874wmi.13.1694586542329;
        Tue, 12 Sep 2023 23:29:02 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id s17-20020adff811000000b0030ada01ca78sm14489694wrp.10.2023.09.12.23.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 23:29:01 -0700 (PDT)
Date:   Wed, 13 Sep 2023 09:28:59 +0300
From:   Dan Carpenter <dan.carpenter@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        kbuild test robot <lkp@intel.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] of: dynamic: Fix potential memory leak in
 of_changeset_action()
Message-ID: <e6cba9f9-2d90-473d-a6b3-5b74b520617d@kadam.mountain>
References: <7dfaf999-30ad-491c-9615-fb1138db121c@moroto.mountain>
 <CAL_JsqJB_pK-Q-Y-v6mWV1KwfL8sjFGgCcSL5gdrZm-TqxvBJg@mail.gmail.com>
 <CAMuHMdVep4Hib0iBabGdFfbCxdftWcJ8wfySGLB8GbmbSmBNhg@mail.gmail.com>
 <06327197-9b17-481f-8ecc-3f9c5ba3e391@kadam.mountain>
 <CAL_JsqKZuG4dK2ThuTaFKk9b9HtGcvmuJMgZFMeVw7ADg2+_kQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqKZuG4dK2ThuTaFKk9b9HtGcvmuJMgZFMeVw7ADg2+_kQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 12, 2023 at 10:32:08AM -0500, Rob Herring wrote:
> On Fri, Sep 8, 2023 at 11:14 AM Dan Carpenter <dan.carpenter@linaro.org> wrote:
> >
> > On Fri, Sep 08, 2023 at 05:34:53PM +0200, Geert Uytterhoeven wrote:
> > > > > Fixes: 914d9d831e61 ("of: dynamic: Refactor action prints to not use "%pOF" inside devtree_lock")
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > Closes: https://lore.kernel.org/r/202309011059.EOdr4im9-lkp@intel.com/
> > > >
> > > > Despite what that says, it was never reported to me. IOW, the added TO
> > > > and CC lines don't seem to have any effect.
> > >
> > > The copy I received did list you in the "To"-header, though.
> 
> Are you sure that's the header and not in the body?
> 

How these warnings work is that the kbuild bot sends the email to me and
the oe-kbuild@lists.linux.dev list.  I look it over and send it out
publicly if the warning seems right.

You're seeing the first email that I hadn't forwarded yet but the second
forwarded email went out and it reached lkml.

https://lore.kernel.org/lkml/eaa86211-436d-445b-80bd-84cea5745b5a@kadam.mountain/raw

You're on the To: header so it should have reached you as well...

regards,
dan carpenter

