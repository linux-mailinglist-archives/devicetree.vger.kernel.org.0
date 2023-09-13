Return-Path: <devicetree+bounces-4-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A6679F347
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 22:51:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2BB1B209EC
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 20:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F1E22EF4;
	Wed, 13 Sep 2023 20:48:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49374200D4
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 20:48:52 +0000 (UTC)
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com [IPv6:2607:f8b0:4864:20::a32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C1081BCC
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 13:48:51 -0700 (PDT)
Received: by mail-vk1-xa32.google.com with SMTP id 71dfb90a1353d-49352207f33so130709e0c.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 13:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694638130; x=1695242930; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XDzSamUCv1CXBCZhdsJ93ZvAxAyPYPb1roagkjST5FY=;
        b=Ml+yP67OxMhE+X7Kusc2ilibalivX50YNc77JBjCtPoCEvyjAS0QRlD6vkSZDwcROo
         DS4DFOWROU2RU9jaIDfM9DX8mc5VE5loFtnAC0QxXpiEoXffkmSE0Iy8HZXgFCrapVhu
         1zNLLhwLKLAuWRP/chsgPaNohdZiY9jAig06Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694638130; x=1695242930;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XDzSamUCv1CXBCZhdsJ93ZvAxAyPYPb1roagkjST5FY=;
        b=LGtThm/yZ4z5brRVF0Pt5GknHk3HLJViO4yrJrcA2ayoq4vWWKNZvSd+VpM+fqdNL4
         rbnwBdNd0ATLkqeE4s8rbkf8sUoMkly6Cy1DRrjOPhdwWumMUYQzFqERfsXjqzEWKfrM
         IpkOTrnvg9Fs+dKlLozp3kWjb/CEYxMG/cxoOs6Dd2/VlzsX5qHvWrgy+8p+O8ZposDW
         Ny6Lov3TgImoBrlK1gu3jEJYIzIKdO7ugmSEyftwC9r4ZPyQbyqEQB9A56uNTnjAtmYa
         fEmuLqmRXIPf8ucS51imaINsvFdZGPYsxp1bmQvvtnZJRYTbFenhI5gfDlfPbSJ2+UM8
         z9Kg==
X-Gm-Message-State: AOJu0Yypf2RT9wBXR8s81WCwW701DfWLlXa7oVYmiKu6/Ce2SnUujse2
	sZAGgxJUJj4qX3VsQ3CTsdAlQGqDyXLCCsRaEmnPpn+kcCTJp1DUo6A=
X-Google-Smtp-Source: AGHT+IFYIQXWNLcsJwIDCrzLjxT2o1GzCYN0IqmobLjAC9kkNDOUIRBu1TE5qljwAGHPKvwnu4wEXnlhCM0k5/x/hyU=
X-Received: by 2002:a1f:c504:0:b0:495:e530:5155 with SMTP id
 v4-20020a1fc504000000b00495e5305155mr3275795vkf.3.1694638130531; Wed, 13 Sep
 2023 13:48:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230913-equal-matrimony-810078@meerkat>
In-Reply-To: <20230913-equal-matrimony-810078@meerkat>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Wed, 13 Sep 2023 16:48:39 -0400
Message-ID: <CAMwyc-SfgrR7N-pdtp=sJ3wNf+RkTYO54jdg7oYraqNj30d5kg@mail.gmail.com>
Subject: Re: This list is being migrated to the new infrastructure
To: devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Sept 2023 at 16:27, Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
>
> Hello, all:
>
> This list is being migrated to the new vger infrastructure. This should be a
> fully transparent process and you don't need to change anything about how you
> participate with the list or how you receive mail.
>
> There will be a brief 20-minute delay with archives on lore.kernel.org. I will
> follow up once the archive migration has been completed.

This work is now completed. I will monitor the performance to make
sure that the new infrastructure is still successfully coping with the
email traffic.
If you notice any problems, please report them to helpdesk at kernel.org.

-K

