Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F71E44A2D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727611AbfFMSD0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:03:26 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:35340 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726622AbfFMSD0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:03:26 -0400
Received: by mail-qt1-f194.google.com with SMTP id d23so23625739qto.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:03:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=d20iYc5LPqCNMhvdI8V3fs/iDdOi3pd2KZKNrQ8kpyE=;
        b=oYRPChq0oVtIOWzO9J9wrrTV4vl2y23PtHsswZcflKNQx8WNlbmL9CJreQq+dDhDi9
         xqTsAogVDhdgmzXAIiqADRpD1Hivo1Ab9vJPNKv667ZqUVTZewHZ8/D1aMzO0c6IUec9
         L0SqnnWd0wZ+2HKN7MbQjw0B4a1YMrRAqz2Ka8zl67wj4jaFagGlFaNsxAHjVOz6+g9H
         NHodEVGPyVFJofjDb4KKd0ywYdxr8PvGNm9VK0ATYi7mreGlNYVLDUw0vGB6/iwNsNd5
         0k9LTTSvVfm9KdeRfZchdu9KivSyoDAEeU6pmnDEvYyYGysrZwCEBeOPopWJplH7GBPv
         uvvA==
X-Gm-Message-State: APjAAAULTUUfXVKJPj+EPFE+lnqrpB1hEVnrrJ4JKzXO7dfnEHx2HXBd
        C0B5VeIMdWIphqgPzEVKpc9AN9E=
X-Google-Smtp-Source: APXvYqwN9Kc0z8/lgC6dTqxgsmhWTgWYuoEH25eFhPDkWf393ARHTsPLhJXBBLPJlCeQgdaBhF0ulw==
X-Received: by 2002:aed:2fe7:: with SMTP id m94mr73844217qtd.191.1560449004952;
        Thu, 13 Jun 2019 11:03:24 -0700 (PDT)
Received: from localhost ([64.188.179.243])
        by smtp.gmail.com with ESMTPSA id f189sm179887qkj.13.2019.06.13.11.03.23
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 11:03:24 -0700 (PDT)
Date:   Thu, 13 Jun 2019 12:03:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     Hannes Schmelzer <hannes.schmelzer@br-automation.com>
Cc:     devicetree@vger.kernel.org,
        Hannes Schmelzer <hannes.schmelzer@br-automation.com>
Subject: Re: [PATCH] Documentation: devicetree: Add vendor prefix for B&R
 Industrial Automation GmbH
Message-ID: <20190613180321.GA22967@bogus>
References: <1556875412-19635-1-git-send-email-hannes.schmelzer@br-automation.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1556875412-19635-1-git-send-email-hannes.schmelzer@br-automation.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 3 May 2019 11:23:32 +0200, Hannes Schmelzer wrote:
> Signed-off-by: Hannes Schmelzer <hannes.schmelzer@br-automation.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob
