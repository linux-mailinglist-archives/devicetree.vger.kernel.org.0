Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA75FD8236
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 23:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726834AbfJOVae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 17:30:34 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:43154 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725871AbfJOVae (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 17:30:34 -0400
Received: by mail-oi1-f196.google.com with SMTP id t84so18172203oih.10
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 14:30:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/WZeZHbYGdIdhIMSUCHtarWfmc88u8CPnSo2gj3DcOo=;
        b=TdNU9Q/p9A9cAeudO3fanLDZrjyocgSzT6c3KftS6SuhEbSQ60clANCWzP4y7NQru1
         Uc/qVbly58KexRKNg8jEzW1XuFy3GGZ6IApQmIo7V01E/+28/PWyqvNJl18C3ZpCbO/d
         /myoQfwwwkfUCbk66T7OQqkLQ1UJ7pF5I2nYTT5k4UFMw/UVcJ7+NPZIPe8Mo7dDmDZ/
         +Xl9XoTyaL1hqR4ymAzdR5MPRwP+xDEkJOBB5zD7Q5lUwczPcaXq4BxJw47xLc8Oj8Ez
         ZC6xKa2ujHZYPgKSzrpXnEqSxPKAcUWq2BlET4pNuhWPBk6ifNmK8SFbonM/nCNst7G/
         X9Kw==
X-Gm-Message-State: APjAAAUZZbFDXoIYIA5bVs4mjuArCUzCsrh4u5UoJr5kBxfaJrgUqTqM
        0OU1akwdpScVMEG2SH7wMud+PFU=
X-Google-Smtp-Source: APXvYqx//9H5T9AKQxXWRQ49ZNS/Ze3o/3T+jiCwN8JD13P81R7YoI0yg831kg6ViZbUL2MAwrq+pw==
X-Received: by 2002:aca:882:: with SMTP id 124mr593346oii.54.1571175033491;
        Tue, 15 Oct 2019 14:30:33 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h32sm6895824otb.46.2019.10.15.14.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 14:30:32 -0700 (PDT)
Date:   Tue, 15 Oct 2019 16:30:31 -0500
From:   Rob Herring <robh@kernel.org>
To:     marek.bykowski@gmail.com
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
        pawel.moll@arm.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Marek Bykowski <marek.bykowski@gmail.com>
Subject: Re: [PATCH 2/2] Documentation: Add documentation for CCN-512 DTS
 binding
Message-ID: <20191015213031.GA25236@bogus>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
 <1570454475-2848-2-git-send-email-marek.bykowski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1570454475-2848-2-git-send-email-marek.bykowski@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon,  7 Oct 2019 15:21:15 +0200, marek.bykowski@gmail.com wrote:
> From: Marek Bykowski <marek.bykowski@gmail.com>
> 
> Indicate the arm-ccn perf back-end supports now ccn-512.
> 
> Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
> ---
>  Documentation/devicetree/bindings/perf/arm-ccn.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
