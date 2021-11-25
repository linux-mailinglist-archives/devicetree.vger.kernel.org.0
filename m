Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D76345D4C8
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 07:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348163AbhKYGaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 01:30:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352650AbhKYG2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 01:28:13 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12167C061761
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 22:23:54 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id b68so4935300pfg.11
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 22:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=kioAbeV26jtOfLhbsus8RZ8a8iejlIcHXqYXJ7To1Ns=;
        b=eBkXht65eaQyuRQDrrqCwhAyWn3xzgvUxbldnoSVNCmLIw5i7yhixiswI7oX6tDXIn
         e5VxmyxOwzGNfTqxQYytEWv+s4+GcFrVweqtrK/1Z76qFlfXaq0g925E6SR3StK2J+j/
         FB6zzBJ6IP07wKtdatpdYqJS0QNNQqTErPT+Rp5noIa2gs3eZInhIbe12dJwHI5EXaKm
         jSfsYO10l/rSZmurWnXJb9C9AaQW9o1SviDRMUk6PXZlVVZFipwQ4uji1PKMVUw3Mc3z
         +AoumEWKC9YLtfDNGAhWOeSfQxHNMpo4Zl1Ws3XBY3FvKe9zAODqAohbXMerXt0Q3aSe
         WXtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=kioAbeV26jtOfLhbsus8RZ8a8iejlIcHXqYXJ7To1Ns=;
        b=Tkwhb8CJy5gZ1fOHflt4vf6Yil4rU2Gx+TqD3TvXIVldsQCYMJ5r4iJ69LHA+u70P1
         01ngFQNlaLQZIQCI58tao0XdQ6frhPc0CvzTjAqPK5ZzQFRjsgQGqoQS3wC1FhWkhSe6
         RrqM0AP2xKlswJjYxjU6J5ZryCouYd2z0x80OZeO60b/iyr5OFbRd9CTuoWpUU8LkJ/M
         bYYv3Tx6iTjYXrij2GkeqVBFi9bAtiuXwtif0UjoUS4jGlcD7BA1rnoSOn5OOqhcEAE4
         l9CNI1eWmC9Hv7XRiLyDHdYZKDFntT1k6ZTcEE274SPjAD79P5wzwh4TiGnC0d1TpR7n
         8IEA==
X-Gm-Message-State: AOAM533HGNapT3fKC7ZaPeKzO8thsBIMCoVv7g5MVUq4PtU8K/dFPWj0
        lFwl6li2EqiqZpv2IqpM1xF3Ww==
X-Google-Smtp-Source: ABdhPJzZmfrw/Y/XnG3KSGm70RCpboamkYNWMx5n6NPi3BL1desf895RZ7uwO1XPBwJ0K0TV+4KGoQ==
X-Received: by 2002:a63:481e:: with SMTP id v30mr13663106pga.33.1637821433350;
        Wed, 24 Nov 2021 22:23:53 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:cd6a:1959:1c65:cc19])
        by smtp.gmail.com with ESMTPSA id u11sm1800235pfk.152.2021.11.24.22.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Nov 2021 22:23:53 -0800 (PST)
Date:   Thu, 25 Nov 2021 14:23:48 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Cc:     Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        "cujomalainey@google.com" <cujomalainey@google.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Takashi Iwai <tiwai@suse.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        Mark Brown <broonie@kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "sound-open-firmware@alsa-project.org" 
        <sound-open-firmware@alsa-project.org>
Subject: Re: [PATCH v3 2/3] mailbox: mediatek: add support for adsp mailbox
 controller
Message-ID: <YZ8r9GvUFqkGCqSz@google.com>
References: <20211124084514.28002-1-allen-kh.cheng@mediatek.com>
 <20211124084514.28002-3-allen-kh.cheng@mediatek.com>
 <YZ4TCYmvegnC/kR0@google.com>
 <f3642bcd031fbfd461b5efae1eba4816cc4856b2.camel@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f3642bcd031fbfd461b5efae1eba4816cc4856b2.camel@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 25, 2021 at 09:51:27AM +0800, allen-kh.cheng wrote:
> On Wed, 2021-11-24 at 18:25 +0800, Tzung-Bi Shih wrote:
> > > On Wed, Nov 24, 2021 at 04:45:13PM +0800, allen-kh.cheng wrote:
> > > > > +static int mtk_adsp_mbox_send_data(struct mbox_chan *chan,
> > > void
> > > > > *data)
> > > > > +{
> > > > > +  struct adsp_mbox_ch_info *ch_info = chan->con_priv;
> > > > > +  void __iomem *reg = ch_info->va_reg;
> > > > > +
> > > > > +  spin_lock(&ch_info->lock);
> > > > > +  writel(ch_info->ipc_op_val, reg + MTK_ADSP_MBOX_IN_CMD);
> > > > > +  spin_unlock(&ch_info->lock);
> > 
> > >
> > > Why does it need the lock?
> > >
> > > Is the write to MTK_ADSP_MBOX_IN_CMD a synchronous operation?
> > > - If yes, I failed to understand why does it need the lock.  Every
> > > calls to mtk_adsp_mbox_send_data() should wait for the data
> > transfer
> > > completion.
> > > - If no, I also failed to understand
> > why.  mtk_adsp_mbox_send_data()
> > > has no way to be aware of the transfer completion.  Would expect a
> > > loop for checking the completion for the case.
> > >
> >  
> 
> In ADSP MBOX IPC flow,
>  
> Host would call mbox send data when the shared data transfer completed.
>  
> (mtk_adsp_mbox_send_data will notice client using MTK_ADSP_MBOX_IN_CMD)
>  
> It’s more like a signal.
>  
> In general case,
>  
> There may be some hosts use the same mbox channel.
>  
> I think it’s better using lock to protect access to
> MTK_ADSP_MBOX_IN_CMD registers

I still failed to understand.  What if 2 hosts notify the same client by writing MTK_ADSP_MBOX_IN_CMD at the same time?
