Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76FFE619862
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:46:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231309AbiKDNqP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:46:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231591AbiKDNqO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:46:14 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82FFC18399
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:46:10 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id l2so3008672qtq.11
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nNOoeyNPbk4klwxXRT+oWl+4JUP2MxkRrYLhtJXAbr8=;
        b=y5cyYq+ECxL6vl+kFY5grLw7dVgw/6YPqpqGm2pcr/O2va4IkgEIltfaC/1BQNhGCc
         5ns0noh2pnxhErcjx3BxpvpCdxpNsfKRsKnR5zz4HUkAmuV5Rg19f710w9L09LFzKec9
         r66nTrlfIBjRASVkCbiMJqPJ6u7fG0njn2PlFBnhxiMdG4Chuskz6flV1oYPCYXtVrGz
         XP/JHucGnGIoZu93Xif8VxKCEWeCBZyIIiFTjUxsozZM4w9xQB2J+43w0eX/vwWNNASp
         bL/7TcRZ00gPunemlpJP/K23L2MhR2cCV0uQ4oKeaDPBZmf2jV1LPZs20seYxmi+HcoW
         6nIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nNOoeyNPbk4klwxXRT+oWl+4JUP2MxkRrYLhtJXAbr8=;
        b=B0MJT5GIXQ2vLQw58X9msrPSXEypK7jqnfApQX+gH9AISJ4wEK+enWprByvTCNGR4L
         lU3njnBHnwnPnjlM7rrASak4d9pLSQvvzoPVtuPjQhzdAtnePfN+qVhxYym6/6NNPOXs
         Mqd5spdA0TxplfJf7yt8Bh9IQXTGFIifL/ZoJqZiJQ/L/wapEPCjKsi7VqJgoA/Mibqe
         xqn91bsIItddoGBSL4MthX5MWqJMvPhLjXocrU+J+DGEOoqy8qeHK1nMj/YiuuIiSJGE
         K/qeioDpDembd5xjk2Mi5UoVUotgaqgni0ypj8mV9rey+AIrtk3GWmrKdOiPPJ19YW0Q
         EsGQ==
X-Gm-Message-State: ACrzQf3fOsM/oe9geKOsmOUWkS/JG2b+aj6HIpjU0Ho1JyBu8HLqhwV4
        dvYqn0Z4gYNx0FVfdEZ4574+mQ==
X-Google-Smtp-Source: AMsMyM5z68VJ4ZL4fh0QWV5cz9FsjGkFdAAv2iMVmsPyBZltry4swkjwL6vej368Hj6i1GkOsBsxUA==
X-Received: by 2002:ac8:4a0a:0:b0:3a5:33cf:c1d2 with SMTP id x10-20020ac84a0a000000b003a533cfc1d2mr18416625qtq.548.1667569569695;
        Fri, 04 Nov 2022 06:46:09 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id bi11-20020a05620a318b00b006eeca296c00sm2851191qkb.104.2022.11.04.06.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:46:08 -0700 (PDT)
Message-ID: <9a6032c9-7784-3f64-fbaa-c18982d25a2d@linaro.org>
Date:   Fri, 4 Nov 2022 09:46:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [v2 09/10] dts-bindings: phy: Add Cadence HDP-TX HDMI PHY
 bindings
Content-Language: en-US
To:     Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, kishon@ti.com,
        vkoul@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
        javierm@redhat.com, ville.syrjala@linux.intel.com,
        sam@ravnborg.org, jani.nikula@intel.com, maxime@cerno.tech,
        penguin-kernel@I-love.SAKURA.ne.jp, p.yadav@ti.com,
        oliver.brown@nxp.com
References: <cover.1667463263.git.Sandor.yu@nxp.com>
 <f1a558c1511f310475002ed7a18d4e0406318b63.1667463263.git.Sandor.yu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f1a558c1511f310475002ed7a18d4e0406318b63.1667463263.git.Sandor.yu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 02:44, Sandor Yu wrote:
> Add bindings for Cadence HDP-TX HDMI PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/phy-cadence-hdptx-hdmi.yaml  | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml
> new file mode 100644
> index 000000000000..edd7bf1c8920
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml

Same comments apply as for other bindings (also phy)

Best regards,
Krzysztof

