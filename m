Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EE7179C18D
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 03:17:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233120AbjILBRL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 21:17:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234361AbjILBQ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 21:16:59 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C1D9EE277
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 17:03:55 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6c0f4ad9eb1so645060a34.1
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 17:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1694476972; x=1695081772; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9FHti0UeaT45a62FC88dUwVtXoyU66QnGu8MY083Gc=;
        b=2M5TCl3sJnO/din1/H7/fJcvWp0idiWyzm5PbzbWrVmQLHJ0LHnW7biRRzOJJXcapE
         OOWfrWF48g1XF5hTHKyVBLKa9t5DUMAP5aMb/cr+vc4JCCs14MtBjzW1uCkr6qREoE4J
         w6SHJN1rjp6cNxcFU99Fdix0COoLQhYTV8hswHZL5jfXa3zuF4he9QrqqjL3cwKm5ZtO
         GP+4Th5KtJNIH8p565Lz7DyTB94bJwMzVeYbzG5RghRlDRmRcitLxtZXoyeLn7qi2W0W
         9boZtJF1c82qKRKa39/vqTK/1T2YQYTfbR7tyBg5zk/LxCZjed3b/Xz9Nsa8GjhqKo6i
         xvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694476972; x=1695081772;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e9FHti0UeaT45a62FC88dUwVtXoyU66QnGu8MY083Gc=;
        b=Z455w2HsH/gbwDZZj+b2jvs+g5zy2UPdoP3O7ZidFTC5P1Grp4D/Q4PJaKDOZoCbbP
         lATviepbSsAz5NDilm8Qq0L+rXifZ4s7JTdyO8U6rLkdNSMNoVgLcLLhr865zTAJcLiF
         LAs0R61xOxVEjkClj9Mp8q0RhFkAODjQL74/mod0xD0nLVMz+HNqX5V7ivUFj1fRNd1I
         o877G9+vZxVbyUjPhkBNe2NT5DICO9LDnQkjBkkmcF1pOS33+Kv8JYER7YmIygYgIkT9
         TFY/y1rxQ+0mPcOD597RVReGej2/D7WQ5kPrIFA/mo5/vqxMnVG0+cVl40B51N+BaSfP
         gmUg==
X-Gm-Message-State: AOJu0Yx2BCCP7slTea04ireHttFFTapO1d/uvVAKTnhYOscSxwlt17eS
        xdLjIKAILZVjfqIcsHvjHX3YnTqqy1U9tVpwLOESZiNrG3fuzbgMwZAJ7w==
X-Google-Smtp-Source: AGHT+IGFOM/4w9EDJt7MB2VEaaVKgVLAWXiT0CbJ/s1mQvZfpoxvSUlNkizqXQqtn0mkteVDRyeHoSWnwX1ZfV5oYr4=
X-Received: by 2002:a25:ce03:0:b0:d09:f934:f2fe with SMTP id
 x3-20020a25ce03000000b00d09f934f2femr9212180ybe.18.1694476292641; Mon, 11 Sep
 2023 16:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-2-yong.wu@mediatek.com>
 <46532644-a38b-98d5-13a1-8b51b9276a1d@amd.com>
In-Reply-To: <46532644-a38b-98d5-13a1-8b51b9276a1d@amd.com>
From:   "T.J. Mercier" <tjmercier@google.com>
Date:   Mon, 11 Sep 2023 16:51:20 -0700
Message-ID: <CABdmKX0-x53hjkKeSw1oDu2yFTKEXc1z_TFg0EMyWF2aBNbk2w@mail.gmail.com>
Subject: Re: [PATCH 1/9] dma-buf: heaps: Deduplicate docs and adopt common format
To:     =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc:     Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Brian Starkey <Brian.Starkey@arm.com>,
        John Stultz <jstultz@google.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linaro-mm-sig@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com,
        kuohong.wang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 11, 2023 at 2:36=E2=80=AFAM Christian K=C3=B6nig
<christian.koenig@amd.com> wrote:
>
> m 11.09.23 um 04:30 schrieb Yong Wu:
> > From: "T.J. Mercier" <tjmercier@google.com>
> >
> > The docs for dma_heap_get_name were incorrect, and since they were
> > duplicated in the implementation file they were wrong there too.
> >
> > The docs formatting was inconsistent so I tried to make it more
> > consistent across functions since I'm already in here doing cleanup.
> >
> > Remove multiple unused includes.
> >
> > Signed-off-by: T.J. Mercier <tjmercier@google.com>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > [Yong: Just add a comment for "priv" to mute build warning]
> > ---
> >   drivers/dma-buf/dma-heap.c | 29 +++++++----------------------
> >   include/linux/dma-heap.h   | 11 +++++------
> >   2 files changed, 12 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > index 84ae708fafe7..51030f6c9d6e 100644
> > --- a/drivers/dma-buf/dma-heap.c
> > +++ b/drivers/dma-buf/dma-heap.c
> > @@ -7,17 +7,15 @@
> >    */
> >
> >   #include <linux/cdev.h>
> > -#include <linux/debugfs.h>
> >   #include <linux/device.h>
> >   #include <linux/dma-buf.h>
> > +#include <linux/dma-heap.h>
> >   #include <linux/err.h>
> > -#include <linux/xarray.h>
> >   #include <linux/list.h>
> > -#include <linux/slab.h>
> >   #include <linux/nospec.h>
> > -#include <linux/uaccess.h>
> >   #include <linux/syscalls.h>
> > -#include <linux/dma-heap.h>
> > +#include <linux/uaccess.h>
> > +#include <linux/xarray.h>
> >   #include <uapi/linux/dma-heap.h>
> >
> >   #define DEVNAME "dma_heap"
> > @@ -28,9 +26,10 @@
> >    * struct dma_heap - represents a dmabuf heap in the system
> >    * @name:           used for debugging/device-node name
> >    * @ops:            ops struct for this heap
> > - * @heap_devt                heap device node
> > - * @list             list head connecting to list of heaps
> > - * @heap_cdev                heap char device
> > + * @priv:            private data for this heap
> > + * @heap_devt:               heap device node
> > + * @list:            list head connecting to list of heaps
> > + * @heap_cdev:               heap char device
> >    *
> >    * Represents a heap of memory from which buffers can be made.
> >    */
> > @@ -192,25 +191,11 @@ static const struct file_operations dma_heap_fops=
 =3D {
> >   #endif
> >   };
> >
> > -/**
> > - * dma_heap_get_drvdata() - get per-subdriver data for the heap
> > - * @heap: DMA-Heap to retrieve private data for
> > - *
> > - * Returns:
> > - * The per-subdriver data for the heap.
> > - */
>
> Kernel documentation is usually kept on the implementation and not the
> definition.
>
> So I strongly suggest to remove the documentation from the header
> instead and if there is any additional information in there add it here.
>
> Regards,
> Christian.
>
Ok thanks for looking. I'll move all the function docs over to the
implementation.
