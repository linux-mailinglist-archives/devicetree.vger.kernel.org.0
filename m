Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 755E513B65F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 01:08:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728656AbgAOAIk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 19:08:40 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:33048 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728885AbgAOAIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 19:08:40 -0500
Received: by mail-ot1-f65.google.com with SMTP id b18so14538275otp.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 16:08:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0caRa5XG3dj99WMQy0XFQRo3RUPxiFm3CleZQAkYe78=;
        b=Cxz71ojeNoBLeJOTaTihmrTaABRGmJjioR+FsU06o5FJ0Vk5DOGzYZ0pzIaiP8xSTY
         7WqobryBB0mpU/DATrc7AqiwW2n1600sxD53/dDj5iGy7KAWhgwAs9YIIcrdatYEYe7U
         HoAiQ9/AwxwcQSdPUSPMVsGy0wJ45Q6OUcgF6Z3fPe9n6tViMnpOdnUgn4s0vRh3UEy1
         pIRPWeAfrx2727oawxJLTwlqZQWWMLuj4frNVkuwZQs0uk7/QIwXMKLvaDAphkZjawNF
         y1QM6mfn7Bzlj+vwIfN0F8kFIj0l5vjstXg1MsFK0y4QkEAg+VYleW/rDsuDyZqu8QFl
         iWZw==
X-Gm-Message-State: APjAAAVJ80wxFPsALmHPO2O9I17+NBC9q1avHN7ByF2RoDGdlsy+8Hmz
        UbOxiE5TEGONjHDh1GfylO8J3OA=
X-Google-Smtp-Source: APXvYqxw14/m9VRtLBlO8He3SQtR39nzU2KKHyu29pd1ervyAh0iEpcDaU1zltdsfS2tZXggjcJpdQ==
X-Received: by 2002:a9d:402:: with SMTP id 2mr688807otc.357.1579046919670;
        Tue, 14 Jan 2020 16:08:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j8sm1777880oii.32.2020.01.14.16.08.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 16:08:38 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2209ae
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 18:08:37 -0600
Date:   Tue, 14 Jan 2020 18:08:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andreas Klinger <ak@it-klinger.de>
Cc:     jic23@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
        rpi-receiver@htl-steyr.ac.at, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: devantech-srf04.yaml: add pm feature
Message-ID: <20200115000837.GA11941@bogus>
References: <20200109083814.GA5368@arbad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200109083814.GA5368@arbad>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 9 Jan 2020 09:38:16 +0100, Andreas Klinger wrote:
> Add GPIO line and startup time for usage of power management
> 
> Signed-off-by: Andreas Klinger <ak@it-klinger.de>
> ---
>  .../iio/proximity/devantech-srf04.yaml         | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
