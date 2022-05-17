Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF35052A3C3
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 15:44:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345195AbiEQNoy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 09:44:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347133AbiEQNox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 09:44:53 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78B724B867
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 06:44:52 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id q15so983091pgr.4
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 06:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pt9MMK51ZD888dBndiS0dCoASz75vrxRph8/MPvQlS8=;
        b=S3DU+VBR0vm772cv1uuDUnEMbgqi5yllUJiH1XBd8ZgQ4Aa6e3xzZKy/FSRlhnfEjm
         7KwPw1ZSSGIIpXU9+ll+6Bspg6BaRGB+ZMNu9SvgRA6OsgIwgPx5KMqgyRt9SE0ufuWL
         c6oamKAdAHZvfeiBmoeFJd1Bw3EYnZffuqldI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pt9MMK51ZD888dBndiS0dCoASz75vrxRph8/MPvQlS8=;
        b=6VOmgwVdz29l4cmJYOiycP9GW8gbbKB46DwqRN15DSTM9svWtabvOq8B3BH5go96p3
         ipMpR+xrZnW7FF8ylbtP/rcKlyViOe5Q2max1jI1QkyBTYhr7bUw04eJawzSqt45T/GJ
         yUSkQ1F+lBO/DgNItEIhuqP1jOXYzvNo8a81xmJ1rldTyQ8aO24e0YGagiAsF/QvbscO
         9A/LJWdMRnRP781kEJV4egFfQXvTWuDlmpky2se22p+RoM1LnubzoHwYFXOo/hbuB8YQ
         7VkEDDyNrfRijp7BWfp+TOPhcrZBWSBzdQODKIbKkjm9MRY22y3rpuLnSgCGCUE2Kzm3
         WULw==
X-Gm-Message-State: AOAM53042v31Q2UKHPLht2zUDsfjgWe5nNQ5vcdwKQc/z7yK2IdWevbw
        RdiKtQGjijkp2UmDQXM/ub/sns5mpHhzJxTOHt05sqhhDNOfUg==
X-Google-Smtp-Source: ABdhPJywjPgdoOw/JtyQqrp/ClohzClPu2c7khu0+BbVFnTWtqh85DgsiXbxBLueR83+PuwsPeQwxmrLYwQItGP6LFw=
X-Received: by 2002:a05:6a00:1891:b0:50d:e6e7:acae with SMTP id
 x17-20020a056a00189100b0050de6e7acaemr22569699pfh.26.1652795091779; Tue, 17
 May 2022 06:44:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220517133540.2456987-1-michael@amarulasolutions.com> <bd342e6be1723daa3787c7088c3510d0@denx.de>
In-Reply-To: <bd342e6be1723daa3787c7088c3510d0@denx.de>
From:   Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date:   Tue, 17 May 2022 15:44:40 +0200
Message-ID: <CAOf5uw=QxFM=CCFLZ=fZCfn9BBz1aFpkPQuED1uHxHRABwMHMQ@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: imx6ulz-bsh-smm-m2: Support proper board power off
To:     Fabio Estevam <festevam@denx.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Rob Herring <robh+dt@kernel.org>,
        "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Simon Holesch <simon.holesch@bshg.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio

On Tue, May 17, 2022 at 3:41 PM Fabio Estevam <festevam@denx.de> wrote:
>
> Hi Michael,
>
> On 17/05/2022 10:35, Michael Trimarchi wrote:
> > From: Simon Holesch <simon.holesch@bshg.com>
> >
> > Supports initiating poweroff on SNVS_PMIC_ON_REQ signal.
> >
> > Signed-off-by: Simon Holesch <simon.holesch@bshg.com>
>
> You missed your own Signed-off-by tag here.

It's fine, I can add Tested-by: Michael Trimarchi <michael@amarulasolutions.com>

Michael



-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com
