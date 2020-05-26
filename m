Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63AFF1B15F0
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2020 21:29:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbgDTT3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Apr 2020 15:29:25 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:40279 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbgDTT3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Apr 2020 15:29:25 -0400
Received: by mail-ot1-f67.google.com with SMTP id i27so9168279ota.7
        for <devicetree@vger.kernel.org>; Mon, 20 Apr 2020 12:29:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=HGPZ915tcV/ijhQ5YNfy3qBcRW72+rbtUY20eOJLIH8=;
        b=jsjrOuyT+xtPTTaf7eMM3RQ0qWVjsIpXIaqkwnRD9RH5yCpIMA7NwonsLE6ngnzQ/f
         6C6Tn29KvJvZ3dRw7Zh0ahshqMUxUbfKiokGm6Kw6SQKQVTclk7gSf/bi35WtiL3sKFX
         jopBNrOixCvaNlL9L6AeW6LyzuoqwLfyoHtidOa0UjRNXwMqZM7UoTKgYYP8jmlXJB3I
         Jh2BaxEngFtp+TjYa6eZ11GTRdRoF9YLNar6OyT+NrVwYZFjCqk0HW2oSu/jgBaJ0AW4
         H7YOlmZMc7TA2y0XovgJeyQ8TaP4RZsySKsQRqP5LYAkeaIVKKdLbu228fI1nsn5Yagg
         waAg==
X-Gm-Message-State: AGi0PubuDrlI1A9Cqiuh8zd27dDyIffWh9VAuplpwOXliElyxGcTahM/
        iaeFUlXRswHi9ChNf9082A==
X-Google-Smtp-Source: APiQypKZza4QjbfaRe0Gm16c4Aap4Hek8sQIYiz4SfNL4EwiTxeYlmNVEJUW8ofe1MPWuQLXcTRknA==
X-Received: by 2002:a9d:58c:: with SMTP id 12mr11153619otd.156.1587410963959;
        Mon, 20 Apr 2020 12:29:23 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i23sm134221otp.74.2020.04.20.12.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 12:29:23 -0700 (PDT)
Received: (nullmailer pid 22962 invoked by uid 1000);
        Mon, 20 Apr 2020 19:29:22 -0000
Date:   Mon, 20 Apr 2020 14:29:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     heiko@sntech.de, srinivas.kandagatla@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH] dt-bindings: nvmem: Convert rockchip-efuse bindings to
 yaml
Message-ID: <20200420192922.GA22844@bogus>
References: <20200413103047.26437-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200413103047.26437-1-ricardo.canuelo@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Apr 2020 12:30:47 +0200, =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= wrote:
> Convert the existing rockchip-efuse binding to json-schema. No changes
> were done to the binding except for small changes in the documentation
> strings.
> 
> This deletes the rockchip-efuse.txt binding and replaces it with
> rockchip-efuse.yaml.
> 
> Signed-off-by: Ricardo Ca�uelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/nvmem/rockchip-efuse.txt         | 54 --------------
>  .../bindings/nvmem/rockchip-efuse.yaml        | 70 +++++++++++++++++++
>  2 files changed, 70 insertions(+), 54 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
> 

Applied, thanks.

Rob
