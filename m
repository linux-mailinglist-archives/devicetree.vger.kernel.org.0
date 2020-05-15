Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D67A41D5A69
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 21:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726278AbgEOTxw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 15:53:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726212AbgEOTxw (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 May 2020 15:53:52 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EDE6C05BD09
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:53:52 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id r22so1472678pga.12
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 12:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5qtf7blhXztbp1/La11Bf9xlOpWMwbs2y8ergkt/b1Y=;
        b=WOdBZxkO9ZlChGU9oTzTvFnzf5mUvWnxclG7T4JezJMXnEFbeWIBYnzv0c5jwu2xR9
         Ua3N7q+nFby1Wl8Ij1gOb/0WxV2Lt/MvTh2s4lrob2lxAcR9KO41fQ13sdSZlN1Y3XVh
         OTL4s6x9aG0YSd9i9ndrZNnBrE8K6mg0Mxnms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5qtf7blhXztbp1/La11Bf9xlOpWMwbs2y8ergkt/b1Y=;
        b=kK1pz6iTIAgz5wSj98tZnWI7gVV+Vwm4Xe4NWbiPenTFs2dBtoORU53juWbFVn2aeX
         /rW5N8mQtU/h+4aMPTeNRhMGncRLLSXUfpznYPLmgljsj3ESabKoHJePuZRfMxikrJTR
         jwlGad4bae5mX1GclXr+tsQwdtnjSyIrlmoDEsJNMDQzve/8iB8CjUyPPxgkIY0a5jIL
         ycjPkrwJsTaVtcMU0OzhqPW7Z85NNVVXxG22kKFdWV1yssN/sd1hm4q+KGBNXqnburSd
         HbJrmcF+Gg8R1jdJtR2nBuRupp1NGlpX0uUmJsul/0510n7TmqzjuAB4i3EGVrqnLJcn
         LPVQ==
X-Gm-Message-State: AOAM533arVRstcDOZ3eFBXMsOiwZZ3OotvbGPS4YTN2RBFqB2HKnIHIh
        GDHC8HnIhkk9tuorIjNxOyH2xA==
X-Google-Smtp-Source: ABdhPJwUJ8/mvnjZpuvFRvd7Z7fsk0iW3ySHXxxVPnmOTQBwN+vIWkdIBNf95F25TgFzeLZ3qRQIkg==
X-Received: by 2002:aa7:9a4c:: with SMTP id x12mr5517509pfj.263.1589572432046;
        Fri, 15 May 2020 12:53:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h13sm2560838pfk.86.2020.05.15.12.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2020 12:53:51 -0700 (PDT)
Date:   Fri, 15 May 2020 12:53:50 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Pavel Tatashin <pasha.tatashin@soleen.com>
Cc:     Petr Mladek <pmladek@suse.com>, Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Benson Leung <bleung@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v4 5/6] pstore/ram: Introduce max_reason and convert
 dump_oops
Message-ID: <202005151253.AF4AC00@keescook>
References: <20200515184434.8470-1-keescook@chromium.org>
 <20200515184434.8470-6-keescook@chromium.org>
 <CA+CK2bCbAb1EN6xa9a-DRfan6Cv3YgZgPJ1buwUaej7jBRv=Kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+CK2bCbAb1EN6xa9a-DRfan6Cv3YgZgPJ1buwUaej7jBRv=Kg@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 15, 2020 at 03:40:14PM -0400, Pavel Tatashin wrote:
>  pdata.dump_oops = dump_oops;
> > +       /* If "max_reason" is set, its value has priority over "dump_oops". */
> > +       if (ramoops_max_reason != -1)
> > +               pdata.max_reason = ramoops_max_reason;
> 
>  (ramoops_max_reason >= 0) might make more sense here, we do not want
> negative max_reason even if it was provided by the user.

Yeah, that's a good point. I'll tweak that. Thanks!

-- 
Kees Cook
