Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C515245784
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 10:31:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726278AbfFNIbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 04:31:38 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:41395 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725907AbfFNIbi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 04:31:38 -0400
Received: by mail-qt1-f195.google.com with SMTP id 33so1523859qtr.8
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 01:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WFDrQf4njTwrCLjFsRfgBfcro7/dqMXuf3KcCnlG7eU=;
        b=i23VuOuZ0hfuRp/LswwKqj7gDp6Tlmafsj4Mm0OMRl4Vx/LbKVjew4IdJyh3RXRsBS
         oJ/pXT42q4cyS1GSeDiksQD1bOpT84+3YUseJco/7CZjfBO5lFktZvECavHicuyZdmvD
         u7U+7MQWSzNnpAJaO1w7qNqlIB/B345yxOQ8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WFDrQf4njTwrCLjFsRfgBfcro7/dqMXuf3KcCnlG7eU=;
        b=TDgs7lrvmLOql2CdfMnLX1Osew1WmML5mp66IOA4Et3dqjyNkpP3MK5T4rTcahpygh
         fLQLM+ngvV/khH//p3pCq1aZOAMu36amd1O7p3AbM0C3GBXyMznKxzvMDqRHu286vkVd
         P6moHJUgVh05x5iKNPSBqW0LLWkjRwVlMJiPKwhR/CjeFFHIgEwq6SwYRvQUBmRGHzkt
         cUsQsm+ytQM5McNw/Gk90Sl+OonX077Kw1R70HUnImSA4G+xUzZADFE06GeGS1WDZ6Q8
         Y20pQvSBw7o311Nt/ytpgyrCmYJi+zGx2I+zoFYNno3yVV5DE3uELxloMEtyUV8ITH8G
         CAfg==
X-Gm-Message-State: APjAAAWTrsi6lsVfS5sWzv5PZbF1JrVVwN8/4gl05X/bxJlzp45NE3/B
        1k8YkmNl2PUoGppp3ZpkeT911y7H9ZhV8q78+sDayw==
X-Google-Smtp-Source: APXvYqwJxz2R9C2u4+JZCsLN1H0xVaea7YSFUZIYK7HKRBDxLRfIPlaG5zng2MeCFRi/Ky0Kb1OnwOXd9vUp1mXjvOw=
X-Received: by 2002:ac8:279b:: with SMTP id w27mr7486636qtw.159.1560501096909;
 Fri, 14 Jun 2019 01:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190612085349.21243-1-bibby.hsieh@mediatek.com> <20190612085349.21243-12-bibby.hsieh@mediatek.com>
In-Reply-To: <20190612085349.21243-12-bibby.hsieh@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Fri, 14 Jun 2019 16:31:26 +0800
Message-ID: <CANMq1KDWOr8f6nx7CS9Z_0OCwZFSTxaAT=333xXE-R5FJfEyfg@mail.gmail.com>
Subject: Re: [PATCH v8 11/12] soc: mediatek: cmdq: add cmdq_dev_get_client_reg function
To:     Bibby Hsieh <bibby.hsieh@mediatek.com>
Cc:     Jassi Brar <jassisinghbrar@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, CK HU <ck.hu@mediatek.com>,
        Daniel Kurtz <djkurtz@chromium.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        YT Shen <yt.shen@mediatek.com>,
        Daoyuan Huang <daoyuan.huang@mediatek.com>,
        Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
        Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
        Houlong Wei <houlong.wei@mediatek.com>, ginny.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 12, 2019 at 4:53 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
>
> GCE cannot know the register base address, this function
> can help cmdq client to get the cmdq_client_reg structure.
>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 24 ++++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 20 ++++++++++++++++++++
>  2 files changed, 44 insertions(+)
>
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 70ad4d806fac..fac4d33fd520 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -27,6 +27,30 @@ struct cmdq_instruction {
>         u8 op;
>  };
>
> +int cmdq_dev_get_client_reg(struct device *dev,
> +                           struct cmdq_client_reg *client_reg, int idx)
> +{
> +       struct of_phandle_args spec;
> +
> +       if (!client_reg)
> +               return -EINVAL;
> +
> +       if (of_parse_phandle_with_args(dev->of_node, "mediatek,gce-client-reg",
> +                                      "#subsys-cells", idx, &spec)) {
> +               dev_err(dev, "can't parse gce-client-reg property (%d)", idx);
> +
> +               return -EINVAL;
> +       }
> +
> +       client_reg->subsys = spec.args[0];
> +       client_reg->offset = spec.args[1];
> +       client_reg->size = spec.args[2];
> +       of_node_put(spec.np);
> +
> +       return 0;
> +}
> +EXPORT_SYMBOL(cmdq_dev_get_client_reg);
> +
>  static void cmdq_client_timeout(struct timer_list *t)
>  {
>         struct cmdq_client *client = from_timer(client, t, timer);
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index a345870a6d10..2e2a2274c231 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -15,6 +15,12 @@
>
>  struct cmdq_pkt;
>
> +struct cmdq_client_reg {
> +       u8 subsys;
> +       u16 offset;
> +       u16 size;
> +};
> +
>  struct cmdq_client {
>         spinlock_t lock;
>         u32 pkt_cnt;
> @@ -142,4 +148,18 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
>   */
>  int cmdq_pkt_flush(struct cmdq_pkt *pkt);
>
> +/**
> + * cmdq_dev_get_client_reg() - parse cmdq client reg from the device node of CMDQ client

Minor nit: this line is over 80 chars.

> + * @dev:       device of CMDQ mailbox clienti
> + * @client_reg: CMDQ client reg pointer
> + * @idx:       the index of desired reg
> + *
> + * Return: 0 for success; else the error code is returned
> + *
> + * Help CMDQ client pasing the cmdq client reg
> + * from the device node of CMDQ client.
> + */
> +int cmdq_dev_get_client_reg(struct device *dev,
> +                           struct cmdq_client_reg *client_reg, int idx);
> +
>  #endif /* __MTK_CMDQ_H__ */
> --
> 2.18.0
>
