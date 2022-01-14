Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 469F948EED3
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 17:59:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243646AbiANQ6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 11:58:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbiANQ6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 11:58:09 -0500
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74C9DC06161C
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 08:58:09 -0800 (PST)
Received: by mail-qt1-x829.google.com with SMTP id v7so11266243qtw.13
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 08:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3/LknUee5tShvPQdGCDJMgZycBj7j7tFq0oVBnp2e2k=;
        b=iVbeHVWMHHQPD1rqqEEZ8DrfcGbToE5o1zbVM35kRg/Odick5qpphoDqLNEV9QsqWM
         MdJuBLZpxmVZUGKZ/U+RT1Dz9gF35kE9KGSv9DtH01kx/MVKsj0th6OCGg44bRFur3do
         owooPCV25uNhuTReUXOtvctS+yL0qqIjAuYoQWs4Z/fXicEeTIVphCSjEonP+DaPuugh
         iRERJ3q7mKRJ4tiaWnKlZ7vUZPO83bjO7ijrkCdhr1Td21bxGEASeVEyhxiK2/fZmGpC
         HdiecBrry7MYtklo3Uo9OBTlnElF/8Q4Pd8a6vxoN6d9aP8OLwdBZQ6B3ug4ThoM3j8K
         v2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3/LknUee5tShvPQdGCDJMgZycBj7j7tFq0oVBnp2e2k=;
        b=k8JSiAePmqcagwGP5TU9nqAv4wRGLAez5NLGy/81cczuXBEQW4Ch0FQxYbQpE8rcZ5
         dx4FHKTzIenWjmV6i2wYJhTfQIGibzO8qr7KGUCeBMNv3xKbhIggF8C8y5oIVUF+sjA5
         tlIEAq+Ruc595+Zqi5iKpsMmclujWhTxUqCney7ozRLaLVfjYQVTBDXCn9NUiUik4n0o
         ohf8NcQjlShloQ9ED/NT49MBtz4W5gds0I71xBR0olE0rW7v9qmpe+ywNczOQ7psFS2h
         p9xMyUerxnsmo/MU2HNqHqlJV2OdPiLsp6q/RXy5GNMfvbpMXwCcqKFI2OoPeIz+x9lw
         exyg==
X-Gm-Message-State: AOAM531WT5jsI3khMyDCRoAnEmI1o+zyZqYI03GSqHdIENWYkxzgP1+S
        BU1yJ5tscn0SpisXLmMMssaPgTVnDOiv83Sue0apqw==
X-Google-Smtp-Source: ABdhPJxLfPwEEBa+Ap9zKOritX0zyA/zOHrcclb56wSl9nFh7Fse60RiU41+kwlDQ+/tbTFIav2jJw6+dJm7B0eVyJU=
X-Received: by 2002:ac8:5c8e:: with SMTP id r14mr8329561qta.42.1642179488381;
 Fri, 14 Jan 2022 08:58:08 -0800 (PST)
MIME-Version: 1.0
References: <20220114114633.742-1-allen-kh.cheng@mediatek.com> <20220114114633.742-3-allen-kh.cheng@mediatek.com>
In-Reply-To: <20220114114633.742-3-allen-kh.cheng@mediatek.com>
From:   Curtis Malainey <cujomalainey@google.com>
Date:   Fri, 14 Jan 2022 08:57:58 -0800
Message-ID: <CAOReqxiSAhrSjXVW=D+ndXko95qLuHGkkNs5Wf-yVEcv1YompQ@mail.gmail.com>
Subject: Re: [PATCH v14 2/2] mailbox: mediatek: add support for adsp mailbox controller
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Cc:     Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Tzung-Bi Shih <tzungbi@google.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Chen-Yu Tsai <wenst@chromium.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> +
> +static struct mtk_adsp_mbox_priv *get_mtk_adsp_mbox_priv(struct mbox_controller *mbox)
> +{
> +       return container_of(mbox, struct mtk_adsp_mbox_priv, mbox);
> +}

this could probably be inline


> +
> +static struct mbox_chan *mtk_adsp_mbox_xlate(struct mbox_controller *mbox,
> +                                            const struct of_phandle_args *sp)
> +{
> +       return mbox->chans;
> +}

also could probably benefit from inline
