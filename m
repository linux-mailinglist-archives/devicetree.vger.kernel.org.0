Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 60C5476002
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 09:42:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725869AbfGZHmw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 03:42:52 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:45417 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725867AbfGZHmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 03:42:52 -0400
Received: by mail-ed1-f65.google.com with SMTP id x19so46515179eda.12
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 00:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZVnIMdlW5ld59nigIKLRvJHeaKWA8dIDfDarP1mW9uY=;
        b=i9++qOzwRPbXujar5MJQzocehC3H4umrtYlWOzNvO927fYQeKQkDVvo8SLyg4mIlGk
         o6pvfweGhYY27xx+rk1G48SH9IU5gf3Fy6oumNOb084qbUBdg8wGD5u7z/2r7aCPrk+h
         w+Bn9/Yh5b0FZRhCgL0ofjnlCfJrsVxD0JotI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZVnIMdlW5ld59nigIKLRvJHeaKWA8dIDfDarP1mW9uY=;
        b=FLYCC69JXIfqkve0pqcEaF73hKjbHKmkyqwCTle6TvOGXoDAS7yCKP0re41ocPtJMk
         C8Y2LWeymE6ZsOHtvIfCjtlaK9C7D7ABCRNU5c+FHTAicF0jM1WUf36YpYPP7Fqjoabj
         xiO83J4hx6mfyrJKeRvU9HQtMfnZk67fCgqClKXhSuVitd/RFioATozGbUKvh+1cJ3lM
         /L2JYMmcf/l24VxhZDoEzWaN+MIW33CILBZ6nC7fKVAoydNpSF1K3cI6V5MOKzUOiFiV
         i88Pydh6ZQcd6JdImuJJXz//iZeVzygnRzwWkn56ew2QMrW7lPraPy9e5Jpo4YN6h6gC
         35Qg==
X-Gm-Message-State: APjAAAX/6CtCYuxXxuhxeuFGjQ3nhSmom8kWnLnRB9xNRWA5LCH6hEG2
        7SHZw04XthbTpQl9LF+VxyCO/KD5ncg4Uw==
X-Google-Smtp-Source: APXvYqwgyZ1rhGjLd/LtPaPrWscOFwNAWAl1GOyfYWoPf4eY9GXtKF35HT2BQITJ5RVNcf05yU3H4Q==
X-Received: by 2002:a50:9646:: with SMTP id y64mr80959521eda.111.1564126970154;
        Fri, 26 Jul 2019 00:42:50 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id l35sm13848292edc.2.2019.07.26.00.42.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 00:42:48 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id f9so53291120wre.12
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 00:42:48 -0700 (PDT)
X-Received: by 2002:a5d:5012:: with SMTP id e18mr71567362wrt.166.1564126968020;
 Fri, 26 Jul 2019 00:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com> <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com> <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07> <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07> <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07> <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
 <20190726074116.GA19745@infradead.org>
In-Reply-To: <20190726074116.GA19745@infradead.org>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Fri, 26 Jul 2019 16:42:36 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
Message-ID: <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
Subject: Re: [RFC, v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To:     Christoph Hellwig <hch@infradead.org>
Cc:     Jungo Lin <jungo.lin@mediatek.com>, devicetree@vger.kernel.org,
        =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= 
        <sean.cheng@mediatek.com>,
        =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= 
        <frederic.chen@mediatek.com>,
        =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
        =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= 
        <frankie.chiu@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
        ddavenport@chromium.org, Sj Huang <sj.huang@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 26, 2019 at 4:41 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
> > Could you try dma_get_sgtable() with the SCP struct device and then
> > dma_map_sg() with the P1 struct device?
>
> Please don't do that.  dma_get_sgtable is a pretty broken API (see
> the common near the arm implementation) and we should not add more
> users of it.  If you want a piece of memory that can be mapped to
> multiple devices allocate it using alloc_pages and then just map
> it to each device.

Thanks for taking a look at this thread.

Unfortunately that wouldn't work. We have a specific reserved memory
pool that is the only memory area accessible to one of the devices.
Any idea how to handle this?

Best regards,
Tomasz
