Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 19692C0D23
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 23:18:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726321AbfI0VRu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 17:17:50 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:33255 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726029AbfI0VRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 17:17:50 -0400
Received: by mail-pf1-f195.google.com with SMTP id q10so2265187pfl.0
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 14:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=fIW9bjsbsDCoAYd1MI1Avm6rTaCkSpKz7mkNvIdoEoY=;
        b=szfWtmIrwjzdD2PBxRD+UIstHqxjUH+lKlGcUD5u7w9UIwAqdA3JEjexN15j684Jso
         oSGq/FKn5XDtCM98EUy6YSFFH7LFdleH6+KXChQ7KGfthYAF81uR2G2fK6INd5a9skx5
         WVNlaL8hFy71wm+zVMraWozeALfoyncDIdipIIi96ILYm7fYv46nFQMMCCZCmxzxYbLV
         Hac9mUBdnTlL3jd5Z3oz7xAZ4yq4KKCzQEGwLrsw0X2vALxYc7vCThZoGLIHt8bXMlTf
         yB47vUOkmx0u/c4P7bf6EwZMOytfC9pnNd3AGjHueE2XYuGoReQwYmG9xwgddx1G6igs
         K5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=fIW9bjsbsDCoAYd1MI1Avm6rTaCkSpKz7mkNvIdoEoY=;
        b=sZj8iLPDuKtEpO85wi7OzzrCTFjE2cvZY1Inx7n5S95fMTxzpmSBJ7OOGdNriWtnT1
         jXO1rIUuox0c2An713HVLzGmgY02Su0HDIWbcj7bA3q0n92IvmkbK6cNVfremRWgTaFP
         wl3v5yT0vvJAHaT8CIh8yt24OJFz97O2+sg/zWA2vq+n4ElFtaqpld46ZjyER5SbbhtP
         /NsjC+wCdF7tRgJgcV6MoMCCOYk49lOrUrsDb45EbtK2hBI7eaJ6V7QbVev7JZTwdiUl
         dlw6J1MmxSp3NGnBb9nR5hvWDrB13F4L7HPJ909NXlV8PBIJQrhKi5+f2j754cD/fFEE
         8HMA==
X-Gm-Message-State: APjAAAWhA1NtEshCmN3QAISALFaPAExfDqrX/LkWqyjBL1Y1u2Su+4C/
        rErfsoWIdGWN75oAVe0v9SSJDw==
X-Google-Smtp-Source: APXvYqyfFqhb5U9wi2Eswf16arxZHKOY7mHg37ZMOwRLqpoDP9qw2MWHAeoLE6MnWdZroGFRroiMaw==
X-Received: by 2002:a17:90a:2e8a:: with SMTP id r10mr12786306pjd.128.1569619069365;
        Fri, 27 Sep 2019 14:17:49 -0700 (PDT)
Received: from dell ([12.206.46.61])
        by smtp.gmail.com with ESMTPSA id s18sm5465515pji.30.2019.09.27.14.17.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 27 Sep 2019 14:17:48 -0700 (PDT)
Date:   Fri, 27 Sep 2019 22:17:45 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Wolfram Sang <wsa@the-dreams.de>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Rob Clark <robdclark@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>, alokc@codeaurora.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>, vkoul@kernel.org,
        linux-i2c@vger.kernel.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [RESEND v3 1/1] i2c: qcom-geni: Disable DMA processing on the
 Lenovo Yoga C630
Message-ID: <20190927211745.GF4469@dell>
References: <20190906061448.GJ26880@dell>
 <20190906065018.GA1019@kunai>
 <20190906075600.GL26880@dell>
 <20190906102355.GA3146@kunai>
 <20190906105445.GO26880@dell>
 <20190906183139.GB19123@kunai>
 <CAF6AEGsHOaR1dRf8xGH5sRa38=S+Y3NvNiAJ9DpMkddWoLBw8g@mail.gmail.com>
 <20190913142821.GD1022@kunai>
 <20190913161345.GB8466@tuxbook-pro>
 <20190913161748.GF1022@kunai>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190913161748.GF1022@kunai>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Sep 2019, Wolfram Sang wrote:

> 
> > It seems linux-next is now pulling from the soc.git, rather than
> > arm-soc.git, but Arnd is still pushing patches to arm-soc.git.
> 
> Can you ask them to fix this?
> 
> > Arnd says that the patch will be in v5.4 and I merged Arnd's tree and
> > gave it a spin here and this patch makes it boot. So please merge this
> > patch for v5.4 as well.
> 
> No worries, this is clearly a bugfix. So it will easily go in with the
> same release as the DTS file.

Still not in Mainline.  Is the plan to send this through the -rcs?

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
