Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3155C74F44
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 15:25:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729787AbfGYNZO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 09:25:14 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:52419 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728143AbfGYNZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 09:25:13 -0400
Received: by mail-wm1-f65.google.com with SMTP id s3so44990311wms.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 06:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=6aDJ94uyyhxgWSyExse9QYlquEyyOJ9JE7SxUePnMhA=;
        b=D5N9xFESPh6uCOxGlZuTzAA4mb7oWHRhDyTjlYtFlwi6bJdhcbNT5E59VtjKhctWnn
         WdkJDf7qZM6dH8RhDOONw43oJBVvhk44/kZjXkF71AncceV6SsngmzIu48GsS/b2XqQo
         l6JJY+duWSKVwsmsptTyrXnzjpENPoQ2DL8Q3TcuNpihHyUaeSlxw+onu3zGEpFbnT91
         hHoJO8pSkk7svMhzZo2foJg5rEyD2QvGIQJTsJJXuAkUenK4O9J3vG1S7kxcH7aX10j8
         FPkQCcXcehBkj79s3Upnry4gyUmatXOHp1WPmbIHRGmmXDWYeBwwQWKnqvK30Z9kbiR3
         eQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=6aDJ94uyyhxgWSyExse9QYlquEyyOJ9JE7SxUePnMhA=;
        b=BDEyrylwbbC9CdrNTBL651GM6cM1mOJPdz/MBnaNSSFGsEkgZaCgWnKkPCq6QJxsM7
         rIkQFNSQPRtmwPrDoAILwnivgUn1O/MktkZ588H5Pf0HNZiau+ytkkcgkbRQ56LJbPWy
         esz8rWClj/GuRqfU1ZTHFNCsKTRSApC9poxZHy9cEcuExKpFXlODZ60AG/pYsJ43a7aX
         xohn9S532IMYxnxNIf7MNXjZ0RdPwuh8uFPl/sL7FUMRAm1WSSaJLP/T9I8rZL4m+VBo
         dhDbDpfC2I9JZdQ1J/TUtcta7JT6UHH9WhGZ1u2oVyjsidFjQC8nEI/JSnwZx60fdZ7J
         P6ig==
X-Gm-Message-State: APjAAAUszdgnyqPF43NGkmUKdpzxtsGa3mcQ1wK3Fm0i/M5GUBLB2DzH
        mkKf/jBwwpEAPYQL9vRzjBiudA==
X-Google-Smtp-Source: APXvYqzkB7UJ5b3t6lNCXexFXjlZMe0BgyF3qfh59IwBeXFA97QLF/U3xl/ncqsPvbVWUg8lQVWfpA==
X-Received: by 2002:a7b:c8c3:: with SMTP id f3mr15113128wml.124.1564061111601;
        Thu, 25 Jul 2019 06:25:11 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h1sm35852177wrt.20.2019.07.25.06.25.10
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 06:25:11 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 3/6] ASoC: codec2codec: deal with params when necessary
In-Reply-To: <20190725125534.GB4213@sirena.org.uk>
References: <20190724162405.6574-1-jbrunet@baylibre.com> <20190724162405.6574-4-jbrunet@baylibre.com> <20190725125534.GB4213@sirena.org.uk>
Date:   Thu, 25 Jul 2019 15:25:10 +0200
Message-ID: <1jimrqxn49.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 25 Jul 2019 at 13:55, Mark Brown <broonie@kernel.org> wrote:

> On Wed, Jul 24, 2019 at 06:24:02PM +0200, Jerome Brunet wrote:
>
>> Also, params does not need to be dynamically allocated as it does not
>> need to survive the event.
>
> It's dynamically allocated because it's a pretty large structure and so
> the limited stack sizes the kernel has make it a bit uncomfortable to
> put it on the stack.

Ok, I'll revert this in v2
