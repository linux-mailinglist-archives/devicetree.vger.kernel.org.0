Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2E6B498753
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 18:55:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244756AbiAXRz5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 12:55:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244574AbiAXRzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 12:55:54 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2AF5C06173D
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 09:55:54 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id y23so8394902oia.13
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 09:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=FWCHKt6LH2PuqhaeoYItOZ0j1RZ5OdeLpVkxG1yf75I=;
        b=Ef9XDb0X+K1ZuhMBCKtx/q0m/QNP5oDUJP++hwHq/X5Eezk/gUs9g1zAojM8AuFIO/
         4f/+KB78ucag9mNlDEA7jgNrCLdI3L5m8dWt6Ia9Fttubo+YsuJs6vduKNMYaabmJvTi
         6SJx8Wv7OMW0lpG4KVlz3MP2PgjXCDXaoU/qX5PFWG97VUIAOu3zi9wmmtAaVR7FMqz/
         HvbJdjEKHRWi3w6+ZytghoxkkwbhPqDNkl1PFypxi/voryuWFaMOTDvCXjUuqgBA/fwl
         gAAsdYMISR8pzmKCeeMMnH4N1Z94Rty7l8xBphkfEKiPm1LhwJRdvhI6r62HXcGp6gda
         P08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FWCHKt6LH2PuqhaeoYItOZ0j1RZ5OdeLpVkxG1yf75I=;
        b=xfM/HYASVWOchMd8j7vcAiX+M5WPcpf59QtKNtdj3gBNf0kGmfTeEZwW102coVAbug
         kblTEMN2TX4dl6dX4M6/S1XXTgE38b0uSgFqhhfJ7YIsKIbP88D+FY31hLFyZ7nPhK/u
         MDgheQkPR9fzAwnuabZUrRUy6PB4w+Ee4uwiM1mut0deZ8Bj7k0Iwl73r1/OT6QIBRlt
         vqJvDfI/S9GLh/f57CqSwxwqhnNeW+GKCsxpbRIgdZ6NXI2yO5xfP+fL/EfekuWuFfb9
         O2i02stge2HhhueeljVDD55VY9Ctzl63pPWo6hNbjzD/nsBiSVm0dIfq07JVV+u2XP4F
         FdBA==
X-Gm-Message-State: AOAM533x/m9MWp9YGSq8iYAl8XuFVqMYdV1mMwQGum92ZHukoznFDPfT
        DSFiL+S1pKiVOEY7EDAgvjjBxA==
X-Google-Smtp-Source: ABdhPJxaH5zt2htRLWDUBfLKV4jl17TqMENFZAIzf4Z8BuBuhmCwi9PCpivhDP9iN+yt4610L2sAWQ==
X-Received: by 2002:a05:6808:142:: with SMTP id h2mr2483184oie.30.1643046954063;
        Mon, 24 Jan 2022 09:55:54 -0800 (PST)
Received: from eze-laptop ([190.194.87.200])
        by smtp.gmail.com with ESMTPSA id bh10sm5892724oib.24.2022.01.24.09.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 09:55:52 -0800 (PST)
Date:   Mon, 24 Jan 2022 14:55:46 -0300
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To:     Adam Ford <aford173@gmail.com>
Cc:     linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        shawnguo@kernel.org, aford@beaconembedded.com,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH V3 08/10] dt-bindings: media: nxp, imx8mq-vpu: Add
 support for G1 on imx8mm
Message-ID: <Ye7oIuzP6+7f/0hX@eze-laptop>
References: <20220124023125.414794-1-aford173@gmail.com>
 <20220124023125.414794-9-aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220124023125.414794-9-aford173@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 23, 2022 at 08:31:22PM -0600, Adam Ford wrote:
> The i.MX8M mini appears to have a similar G1 decoder but the
> post-processing isn't present, so different compatible flag is required.
> Since all the other parameters are the same with imx8mq, just add
> the new compatible flag to nxp,imx8mq-vpu.yaml.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 9c28d562112b..7dc13a4b1805 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -5,7 +5,7 @@
>  $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
>  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>  
> -title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
> +title: Hantro G1/G2 VPU codecs implemented on i.MX8M SoCs
>  
>  maintainers:
>    - Philipp Zabel <p.zabel@pengutronix.de>
> @@ -20,6 +20,7 @@ properties:
>          deprecated: true
>        - const: nxp,imx8mq-vpu-g1
>        - const: nxp,imx8mq-vpu-g2
> +      - const: nxp,imx8mm-vpu-g1
>  
>    reg:
>      maxItems: 1
> -- 
> 2.32.0
> 
