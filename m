Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1570120D739
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2020 22:07:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731717AbgF2T2D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jun 2020 15:28:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732773AbgF2T15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jun 2020 15:27:57 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53DA0C03E97B
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 12:27:57 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id f2so7474418plr.8
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 12:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=gjtO3+vpKn1A68ulTNV3+i1kW5W8NfqinqR35PqtzaI=;
        b=KMAALDJGoGqtO4OG1RHmMXxEqwnS9LcbGgumEAe0ue9WMeuKbWgzvqK6u9RHeNs3PO
         hJVPWrtmgZ3DV9y8pQjNFfIrujZfg/OeJOB+5YH9B647Krz5oAq9Q6OefmoCPUHRnpO8
         gO0OUkpAmKqS+MtNG7QBmUCW0a6wVU+vzFpVo6mK6BVJlBuoF/r3WOwqtnF72kf34a5K
         bT8WsbVXiGXMsekX+lWRdz9N2oyaWBp+EjqpPPlH07TbHmzlYsdPRA2dze8JFXDONFuc
         VG3tMGgUk55U3op7075lFmFL+v6gF9r2IhQ7YZ8eVy8KV7Zk/UlXsWEE/ZT+RaRbrCwt
         GNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gjtO3+vpKn1A68ulTNV3+i1kW5W8NfqinqR35PqtzaI=;
        b=EZGuvUlu/pYN40vkuGuVlGjFP7wI91zZ8GBEBg8hvWqKO+BAckhEz9br64h7VTZJjQ
         yWzfPx84f0RnG0yh7YML4RlCvoaYG2qIwYmB026bpRgImY08jkOLxzLtO+DPDPvrXU3u
         m60G1NMgso+RpeqxIiUVfrJ517QSX9QKInVJZgZ5jIRt0uajLUoKMcZjegq9mbsXKwap
         pIbVXKg0p6PcmMH1t6KaFG48GD3ytQd8INaLb7ZIBYhl1B2tK95I2O7rQVqOGuIAb2G2
         arz6Vvh2x8KW+5Dco1vApuBSy0V2zx4ZSF2A8p5LPdml/8pxlUd7eUznqE7ltcJLx/xh
         rl9g==
X-Gm-Message-State: AOAM530vGSpIPjtqrktOL8Yjw8v+nmbZMpACi0wTG9VIPg5sXGzMzdDP
        D25Usinp1VIwYAObLe+zg5bsIA==
X-Google-Smtp-Source: ABdhPJy0SChbO2shXRc4vp0bmFhI2gH9IjNGdF2dYdDp0EX9wxfgtO8MwNTFrtY2y9b7qitmPqOirw==
X-Received: by 2002:a17:90b:4c8b:: with SMTP id my11mr18897947pjb.153.1593458876736;
        Mon, 29 Jun 2020 12:27:56 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 22sm428848pfx.94.2020.06.29.12.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 12:27:56 -0700 (PDT)
Date:   Mon, 29 Jun 2020 12:25:24 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Randy Dunlap <rdunlap@infradead.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH -next] <linux/of.h>: add stub for of_get_next_parent() to
 fix qcom build error
Message-ID: <20200629192524.GK388985@builder.lan>
References: <ce0d7561-ff93-d267-b57a-6505014c728c@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ce0d7561-ff93-d267-b57a-6505014c728c@infradead.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 29 Jun 09:43 PDT 2020, Randy Dunlap wrote:

> From: Randy Dunlap <rdunlap@infradead.org>
> 
> Fix a (COMPILE_TEST) build error when CONFIG_OF is not set/enabled
> by adding a stub for of_get_next_parent().
> 
> ../drivers/soc/qcom/qcom-geni-se.c:819:11: error: implicit declaration of function 'of_get_next_parent'; did you mean 'of_get_parent'? [-Werror=implicit-function-declaration]
> ../drivers/soc/qcom/qcom-geni-se.c:819:9: warning: assignment makes pointer from integer without a cast [-Wint-conversion]
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: linux-arm-msm@vger.kernel.org

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  include/linux/of.h |    5 +++++
>  1 file changed, 5 insertions(+)
> 
> --- linux-next-20200629.orig/include/linux/of.h
> +++ linux-next-20200629/include/linux/of.h
> @@ -630,6 +630,11 @@ static inline struct device_node *of_get
>  	return NULL;
>  }
>  
> +static inline struct device_node *of_get_next_parent(struct device_node *node)
> +{
> +	return NULL;
> +}
> +
>  static inline struct device_node *of_get_next_child(
>  	const struct device_node *node, struct device_node *prev)
>  {
> 
> 
