Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 489F9C306F
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 11:40:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726697AbfJAJkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 05:40:24 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38334 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727473AbfJAJkY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 05:40:24 -0400
Received: by mail-wr1-f65.google.com with SMTP id w12so14622069wro.5
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 02:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version;
        bh=UzvLIkrTSi/epemgPJ8AXmPaJAGF16PPZin3f/2spag=;
        b=TpvppLf8WLWVp9DomSHJfRS+c1F4tZNVBDGJDc6uMvD3qLIjsRJ9isqzG7ARg31F7H
         WuCIZ0QihSFQA7WGB0e6Hmwy/vxTte+2fmlwPIpi/Bt7RBmN47RkGoUX/cEiNqE+BgzH
         trM9KE0xmDwnDrzjlxZ6MELCU1aDjLYWc2puO1IeukTMI1wmD1xAnADamSFNmx1qILUB
         O+zCVNDAARLMyP20ieMb5WFhecLROs+VxAlOMyrjgw43gct9EExlSRU5M2Ie9Z6IT0Ec
         aaV6huX2lmCtKVDrBHY+oB6eMt4ustgfcvLM2QRfRdTTkgjpTAglRn6/tdTB6S2mkg88
         +QMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version;
        bh=UzvLIkrTSi/epemgPJ8AXmPaJAGF16PPZin3f/2spag=;
        b=COQj5rhnG0VOdP0pAuHgIh/UrJVHrLQNKZKUf3ACqV1K9QRPsUChcZeJIUQ2oQ6nf6
         1vTiZNJw385LU5fX/ZUkgZh0vQnfaQIkvGhzo1so9CvsFMi96hB1WiPSm3dmIcXDR3mz
         zVjEO98jsJ1dTxuEZKAlrHvyCUDsyyX/lG3TGDekWFe27x1vk6Squ6aeOReHvobS+mIl
         evMzAfgu8RRZXLCP71BNpJ3NPFggGgmD4NCPVXr7WwfxGTxc9kybCOtqSxHzN/HoFEXN
         2NXEcQNafKBcbnjTCfdusOYAzshZp6IgMdtL2zf4jCJPdUQsArQ27jlMWDcRD5XbA1eD
         S5JA==
X-Gm-Message-State: APjAAAVTq0N0x8QpJQd1h5/0+rbHMtnsVippgTYnVZ1DTkNlarmKRUj3
        LDGt8eAo5HCTsRtkHjc8gFVc+A==
X-Google-Smtp-Source: APXvYqwyIWVUUG6BoVZAuEAlFBkPxd97wknxy9fL/CaSJF8Tr2znTOAsBGffEVJ4FW38j9dZAwkJfA==
X-Received: by 2002:adf:e64e:: with SMTP id b14mr18036441wrn.16.1569922822301;
        Tue, 01 Oct 2019 02:40:22 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id b5sm1925895wmj.18.2019.10.01.02.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2019 02:40:21 -0700 (PDT)
References: <20190905135040.6635-1-jbrunet@baylibre.com> <1567693618.3958.4.camel@pengutronix.de>
User-agent: mu4e 1.3.3; emacs 26.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] reset: meson-audio-arb: add sm1 support
In-reply-to: <1567693618.3958.4.camel@pengutronix.de>
Date:   Tue, 01 Oct 2019 11:40:20 +0200
Message-ID: <1jk19oregr.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu 05 Sep 2019 at 16:26, Philipp Zabel <p.zabel@pengutronix.de> wrote:

> Hi Jerome,
>
> On Thu, 2019-09-05 at 15:50 +0200, Jerome Brunet wrote:
>> This patchset adds the new arb reset lines for the sm1 SoC family
>> It has been tested on the sei610 platform.
>> 
>> Changes since v1 [0]:
>> * Fix the mistake on the number of reset as reported by Phililpp (thx)
>> 
>> [0]:  https://lkml.kernel.org/r/20190820094625.13455-1-jbrunet@baylibre.com
>> 
>> Jerome Brunet (2):
>>   reset: dt-bindings: meson: update arb bindings for sm1
>>   reset: meson-audio-arb: add sm1 support
>> 
>>  .../reset/amlogic,meson-axg-audio-arb.txt     |  3 +-
>>  drivers/reset/reset-meson-audio-arb.c         | 43 +++++++++++++++++--
>>  .../reset/amlogic,meson-axg-audio-arb.h       |  2 +
>>  3 files changed, 44 insertions(+), 4 deletions(-)
>
> Thank you, both applied to reset/next.

Hi Philipp,

Looks like this patchset missed v5.4-rc1.
Could you provide a tag with the bindings to Kevin so we can use the IDs
in DT until the next merge window ?

Thx
Regards

Jerome

>
> regards
> Philipp

