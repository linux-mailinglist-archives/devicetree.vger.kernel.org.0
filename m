Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40B0A283749
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 16:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726070AbgJEOEk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 10:04:40 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:33106 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726128AbgJEOEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 10:04:40 -0400
Received: by mail-ot1-f67.google.com with SMTP id m12so8707527otr.0
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 07:04:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=8DqDTUVuE/JR6FYvxnUdeqUtlDnNGJR8KJvSFHeXvT0=;
        b=CjbwfIVEWN4mXR7BH/bLaFzunFVYXLwNKo9Gn+RyKJ8fbfBte2KjRgX7boWTzeiq2S
         KXclcFZ8BGdYyCWEdwoICg5hcWbgg1qGoQHrS+UEiFW4a5MK/B38RCm772vJDZBFSHAg
         uI53zXsFPMo0B8rzdh4vgIaw2cBJURm0qVjtEoXRAKsSTAqypD8hXfYCFyf+7mioY38K
         ikGt7nLQEpA+wkPvPhq9mYMOY82Zh3j2FxyExfdDjLkiNXHUIWGIxRKAnt6+iJKk/ZSc
         JaqFhOeq4ohaSf0iBEtNTDM/+7y2re+52ruMERtJvlpebDFt7qScythHdTLaj9JcOfJu
         tQaA==
X-Gm-Message-State: AOAM531aGljTn94m2/ZMWsVRK/MypkaIQJiNPXCsUY6+PcnBrJ0YwyXZ
        6P0wzh9jizh0sLVx4Dz7JnEKc2FPFUMB
X-Google-Smtp-Source: ABdhPJyM9sXFB4w/A8yt4QkUX856eXgLKaYqhZ8fywufBL2Ui/uEZOGRIsv1drAAQp7Ya2gQFEVVkQ==
X-Received: by 2002:a9d:ecf:: with SMTP id 73mr11054363otj.201.1601906677888;
        Mon, 05 Oct 2020 07:04:37 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 189sm2252199oid.40.2020.10.05.07.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 07:04:37 -0700 (PDT)
Received: (nullmailer pid 100363 invoked by uid 1000);
        Mon, 05 Oct 2020 14:04:36 -0000
Date:   Mon, 5 Oct 2020 09:04:36 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     bleung@chromium.org, groeck@chromium.org, kernel@collabora.com,
        dianders@chromium.org, sjg@chromium.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com
Subject: Re: [PATCH 1/3] dt-bindings: i2c: convert i2c-cros-ec-tunnel to
 json-schema
Message-ID: <20201005140436.GA99902@bogus>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-2-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201005071403.17450-2-ricardo.canuelo@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 05 Oct 2020 09:14:00 +0200, Ricardo Cañuelo wrote:
> Convert the google,cros-ec-i2c-tunnel binding to YAML.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  .../i2c/google,cros-ec-i2c-tunnel.yaml        | 56 +++++++++++++++++++
>  .../bindings/i2c/i2c-cros-ec-tunnel.txt       | 39 -------------
>  2 files changed, 56 insertions(+), 39 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.example.dt.yaml: cros-ec: 'i2c-tunnel' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml


See https://patchwork.ozlabs.org/patch/1376623

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

