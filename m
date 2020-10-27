Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F14929C3B5
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 18:49:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2901687AbgJ0OZ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 10:25:59 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:23785 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2895955AbgJ0OZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Oct 2020 10:25:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1603808757;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=aHlS6Q+VJylfRt6qQoXc/7FYcxTZd0+ikD2nimeDuM4=;
        b=UtfJd+sN8wFKtur2rVQWOFg/Ksmfm5f4kK8rVORsGb1TR6Quf8zuSO6jolMBRLoZne1bpL
        5aBGhBVFphj3Y20ZQg44b79d2FF1QvscPlY4krhQoXSvBRF5GeFDW33Xj3Q4/eFY2LBv8S
        8JOEwg7al7/x0DlWSZv9Xd+79tFZNZk=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-499-dBziHrBaMqmf234aC3cZZA-1; Tue, 27 Oct 2020 10:25:55 -0400
X-MC-Unique: dBziHrBaMqmf234aC3cZZA-1
Received: by mail-ej1-f70.google.com with SMTP id mm21so908006ejb.18
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 07:25:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aHlS6Q+VJylfRt6qQoXc/7FYcxTZd0+ikD2nimeDuM4=;
        b=gymexxc6Z7VLpVNDOnQwBB/M1LGMmRadPOKqd08HEePvVu4hCIUZjTFgrcCvaINcOg
         FQK+lt6JjDS/tqIClGA1Vxz6zeW4LTj3WmIem9JNAGoWp6ARa56pAWD3P3o7Rq9ey03B
         vMPxreU5GALEl9Mh4xePM7ByRULA+b9M2k92RdqrLk+IbfLy8cs3rGzp/h+zAvoBBZhU
         t16xmfFvLrf2Ybz5XfQRkl1voiD7U3L+G6JNQOIaopOYey20rrTwSuiXXrE1imF8mFS6
         hneCWr6hhs8Y6xuKBNYwwRNvENNCBDUlS5bdk5z9NzT0zyj+vMS78+ZS2L3P69gwj7By
         psig==
X-Gm-Message-State: AOAM532bjDb1bXu5u3gQJJPGaxN4yU4BXknj0I++ccXAXIH8DQrrg0Qt
        pT0QutS1NDRZLundpRcTzAYpogjAxu/kgjVRtd/O6ufi/NQBiJoxTTfSeNlAj2HOMtTLKhreBbo
        UNwYJ7L9GIRxA5P6FNQHLFQ==
X-Received: by 2002:a17:906:1494:: with SMTP id x20mr2559719ejc.339.1603808754080;
        Tue, 27 Oct 2020 07:25:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4p8LTHb3m30QtM/Hxzi9ybTsOQpjyC83CPSA8t/nI2CpIvXEbaKK6Jvetgs+9YZ5p8Y2WoQ==
X-Received: by 2002:a17:906:1494:: with SMTP id x20mr2559687ejc.339.1603808753712;
        Tue, 27 Oct 2020 07:25:53 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
        by smtp.gmail.com with ESMTPSA id n22sm1079128edr.11.2020.10.27.07.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 07:25:53 -0700 (PDT)
Subject: Re: [PATCH 6/7] dt-bindings: ata: Update ahci_mvebu bindings
To:     sven.auhagen@voleatech.de, axboe@kernel.dk, robh+dt@kernel.org,
        tglx@linutronix.de, maz@kernel.org, gregory.clement@bootlin.com
Cc:     linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, jason@lakedaemon.net, andrew@lunn.ch,
        rjw@rjwysocki.net, viresh.kumar@linaro.org,
        antoine.tenart@bootlin.com, maxime.chevallier@bootlin.com,
        thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com
References: <20201007154554.66650-1-sven.auhagen@voleatech.de>
 <20201007154554.66650-7-sven.auhagen@voleatech.de>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <4d5345c8-c510-4783-7aec-4db5cb7c8cf2@redhat.com>
Date:   Tue, 27 Oct 2020 15:25:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201007154554.66650-7-sven.auhagen@voleatech.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 10/7/20 5:45 PM, sven.auhagen@voleatech.de wrote:
> From: Miquel Raynal <miquel.raynal@bootlin.com>
> 
> Update bindings with the already in use Armada 8k compatible.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.txt b/Documentation/devicetree/bindings/ata/ahci-platform.txt
> index 83d715cbcecd..78d9d413a5c6 100644
> --- a/Documentation/devicetree/bindings/ata/ahci-platform.txt
> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.txt
> @@ -15,6 +15,7 @@ Required properties:
>    - "ibm,476gtr-ahci"
>    - "marvell,armada-380-ahci"
>    - "marvell,armada-3700-ahci"
> +  - "marvell,armada-8k-ahci"
>    - "snps,dwc-ahci"
>    - "snps,spear-ahci"
>    - "generic-ahci"
> 

