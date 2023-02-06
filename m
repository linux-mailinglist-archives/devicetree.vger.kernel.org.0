Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14DD768BF9E
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 15:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231521AbjBFOJs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 09:09:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231377AbjBFOJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 09:09:34 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4377722DD8
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 06:08:08 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so10837753wmb.4
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 06:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=63FbMXrHnvr/mXxfnNiaGgvC6f2V9Ec37cTVHS6GGy8=;
        b=d4qoiTd/w/GXkJAEplSab84iZwfJhUKLODfoDrE3nJbWhZOgdFwifmvmvr+Bmwzxqc
         byxgxKovHjY8IDjqE8Ht2MvAeRE8pWaijnXpDAswjl9O/Xb7m+M8suBagdJpsKeNYIZG
         SzKZxuqtVOwpfCtgxJXY7cUFwUmSyE99TOG//W+q0rNq+R2ur7A3hIhyyVTDBgvEPmT4
         WtTVI78kyLPX2GQywXjKGOK0WHUQwrD7cQOuxOgp321t9Wp0YKZlDwz5/Sr6ZOnd7tu9
         Wa056N7SCsz88EAsaIE1rKK0tY2mQB6SMwdkbSHdud9lVDpWIQSWfomNb6dHx6OmZwO/
         x4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63FbMXrHnvr/mXxfnNiaGgvC6f2V9Ec37cTVHS6GGy8=;
        b=kx5RN8QFJUKlgwHGJPERCK9oIFD05b7izDWcxDROekiqLj8Ztpz7nnyEzY1VmyjGgZ
         /fV+LEHCQAa6jtH+Jzxs2cmbhZfmJdGxaZv1vRtOPBqty78iQ9TEbiqJn4zJ7JFhOixq
         G+JBNLBIJs9k11Lf77+9eWEMIkYKdVH0eZIyJ0aL3m+ZSaUCHWfg8S4poBIfe5xyJfCC
         UqWdsggfdoRdVpLSK0PlsLVMI2iX/xFq4x6LcnsZ0KqaFj0rxI1mZlpKLbR1LXsGRE/v
         sUcrPm4+r1Vmbysf43vAkWji5TPWopoYGVRzLTMaSwl6cqDkOX9Ct1Y73x05yg63hd47
         gYfw==
X-Gm-Message-State: AO0yUKXMGnBLfmZ6wLF81vxl9L5z1h1vkRg5SPHzvtiEibQw2RUGNxXa
        akl5WXiRyiMy5lJvWciRcoW89Q==
X-Google-Smtp-Source: AK7set/TdtA74eFvGRdYxYzvd4ZKtZvFhWEOzAAXv1InLpgvOTG5k3hLRNddq+oAvmj/I4LxwoFEKw==
X-Received: by 2002:a05:600c:1c0e:b0:3d0:6a57:66a5 with SMTP id j14-20020a05600c1c0e00b003d06a5766a5mr19373315wms.0.1675692436728;
        Mon, 06 Feb 2023 06:07:16 -0800 (PST)
Received: from linaro.org (wifi-eduroam-trans.univ-tlse3.fr. [195.220.58.237])
        by smtp.gmail.com with ESMTPSA id ip20-20020a05600ca69400b003dd19baf45asm10543114wmb.40.2023.02.06.06.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 06:07:16 -0800 (PST)
Date:   Mon, 6 Feb 2023 15:07:13 +0100
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     bchihi@baylibre.com, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Subject: Re: [PATCH v12] thermal: drivers: mediatek: Add the Low Voltage
 Thermal Sensor driver
Message-ID: <20230206140713.GB15176@linaro.org>
References: <20230124131717.128660-5-bchihi@baylibre.com>
 <20230131153816.21709-1-bchihi@baylibre.com>
 <ab1e4822-d5f4-79f6-ea38-47e2342ebe49@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab1e4822-d5f4-79f6-ea38-47e2342ebe49@linaro.org>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 01, 2023 at 08:55:07AM +0100, Krzysztof Kozlowski wrote:
> On 31/01/2023 16:38, bchihi@baylibre.com wrote:
> > From: Balsam CHIHI <bchihi@baylibre.com>
> > 
> > The Low Voltage Thermal Sensor (LVTS) is a multiple sensors, multi
> > controllers contained in a thermal domain.
> > 
> > A thermal domains can be the MCU or the AP.
> > 
> > Each thermal domains contain up to seven controllers, each thermal
> > controller handle up to four thermal sensors.
> > 
> > The LVTS has two Finite State Machines (FSM), one to handle the
> > functionin temperatures range like hot or cold temperature and another
> > one to handle monitoring trip point. The FSM notifies via interrupts
> > when a trip point is crossed.
> > 
> 
> (...)
> 
> > +
> > +struct lvts_domain {
> > +	struct lvts_ctrl *lvts_ctrl;
> > +	struct reset_control *reset;
> > +	struct clk *clk;
> > +	int num_lvts_ctrl;
> > +	void __iomem *base;
> > +	size_t calib_len;
> > +	u8 *calib;
> > +};
> > +
> > +#ifdef CONFIG_MTK_LVTS_THERMAL_DEBUGFS
> > +
> > +static struct dentry *root;
> 
> How do you handle two instances of driver?

For now, we can put the entry in /sys/kernel/debug/<dev_name>

I'm preparing a debugfs series for the thermal framework and that will provide
an entry to hook in for the sensors debugfs if available
