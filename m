Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E18E83BCB4A
	for <lists+devicetree@lfdr.de>; Tue,  6 Jul 2021 13:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231809AbhGFLDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jul 2021 07:03:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231266AbhGFLDj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jul 2021 07:03:39 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F21C2C061762
        for <devicetree@vger.kernel.org>; Tue,  6 Jul 2021 04:01:00 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id k11so24394446ioa.5
        for <devicetree@vger.kernel.org>; Tue, 06 Jul 2021 04:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PAM3WxGG2aSByzycYnPlxdEC8iQWk/tth0fjLKjJUmQ=;
        b=kuy3vDkn1fhRqNRFz8YQPltnu/ZN544qGFslrOfb73mvesqSWnZRLb2FU6oWp6alCe
         SxmVYx5sLaTlHTOfvsgR988ez7IxSc69Z0G9nxmtyYOCdi2+KxJccGOeEzoc+Aj2G252
         Lu9gx6HD6VOMpctXz1IDfUu3BD/kG/RbukpjmSLn++bydCbknoZBSM68z3MMOH5wUXKa
         fzl4u5B5yf2i1OsFFS8XCeFWfkNpiy4y71M8iU1UwmHm+IryzPu2ZNHiIrDLvB65Devv
         KmTr0shOoDtArNb19Q4IJKMrjrHNnk+4dqInORDEd0llXi/NP5d0yR2b8Sskvs3TrQNk
         c6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PAM3WxGG2aSByzycYnPlxdEC8iQWk/tth0fjLKjJUmQ=;
        b=LMDfC/N7GywRlSKO/EGyi0y+gX04yXuRIxo0VHN2I2QmStkTZdNJ2MswjePVhkwM+y
         VvCvStZIJq7JGJ6V6o/aobHEXjbx6zflPJdFB0RFy5cOW673lxtcRqSRyxKlxzyBRWl/
         9H33AEUk7d+NMaqYedYXfIfMmJiCX2+Vg5HwffupJUnfKU3f/kioGIWUDaz73yfXbWjI
         5gLPy5UqEvMtRv05aezBMdPR44B6bgGZ73HU8F6DKid27pnTiEGfusJDV0RtXI+0OrHO
         l9f7+Tomiwx9cTyUYQlKiS7emw7FShZWrDcSCRu9XEp65ZfHXLhxwtFPdojEfqInIpf1
         7bqw==
X-Gm-Message-State: AOAM533upuF4ngA4jmiQTEF/+DX/XS6Uo2cykGbQ+gSkOf+0dxj8Rc4t
        +gvW8sp/mbwK9xb2hsiencv60nJ2p0h+a3BYQkrFiw==
X-Google-Smtp-Source: ABdhPJzwUDQLM/CTRiwWQY8sr2eGBdmmfFG8dIq9UWX1ZvVG78S0nZEd03RB6W99/KoiiJAz3A2AQBBQwiYbb9+BEBo=
X-Received: by 2002:a5e:a612:: with SMTP id q18mr15318284ioi.76.1625569259079;
 Tue, 06 Jul 2021 04:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <1625038079-25815-1-git-send-email-kyrie.wu@mediatek.com> <1625038079-25815-7-git-send-email-kyrie.wu@mediatek.com>
In-Reply-To: <1625038079-25815-7-git-send-email-kyrie.wu@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Tue, 6 Jul 2021 19:00:48 +0800
Message-ID: <CA+Px+wWAHDbD4ycOSXjg+-Tb6ZsaUnftJ0EbjH+ThwXurO8qMw@mail.gmail.com>
Subject: Re: [PATCH v2,6/9] media: mtk-jpegenc: Generalize jpegenc HW timeout interfaces
To:     "kyrie.wu" <kyrie.wu@mediatek.com>
Cc:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bin Liu <bin.liu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Tomasz Figa <tfiga@chromium.org>, xia.jiang@mediatek.com,
        maoguang.meng@mediatek.com, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 30, 2021 at 3:31 PM kyrie.wu <kyrie.wu@mediatek.com> wrote:
> +void mtk_jpegenc_timeout_work(struct work_struct *work)
No code is using mtk_jpegenc_timeout_work.  Have no enough context to
review the code.

> +{
> +       struct mtk_jpeg_dev *jpeg = container_of(work, struct mtk_jpeg_dev,
> +               job_timeout_work.work);
> +       struct mtk_jpeg_ctx *ctx;
> +       struct mtk_jpeg_dev *master_jpeg;
> +       struct vb2_v4l2_buffer *src_buf, *dst_buf;
> +       struct mtk_jpeg_src_buf *jpeg_src_buf, *jpeg_dst_buf;
> +       enum vb2_buffer_state buf_state = VB2_BUF_STATE_ERROR;
> +
> +       src_buf = jpeg->hw_param.src_buffer;
> +       dst_buf = jpeg->hw_param.dst_buffer;
> +       ctx = jpeg->hw_param.curr_ctx;
Could they be inlined to above where the variables are declared?
