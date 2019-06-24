Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ADE2A51D09
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 23:23:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726447AbfFXVXl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 17:23:41 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:39074 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725268AbfFXVXk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 17:23:40 -0400
Received: by mail-io1-f65.google.com with SMTP id r185so571971iod.6
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 14:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=fs+nly2CqDJY2F03DH2S4onxLharejPukjuN2a0s++k=;
        b=DHSaqTwlJv7AurjXB+C8yOpKCNMewWdCZE4JcB8h/68BVRArdlHcI3Z0CrqS2lOl4N
         cEuIUQ92NhpHODPahLAAAbPLC3F3VIDggVp/hnDP8ARZc8HllIYg2VTXTIHSFZeVOA6P
         EHoCDwGc1moMGzaIOzYrQ/0AYMsFdMmCbS6F3sPuj2bmiaic+wYjH8WB6ENupkdcmDon
         mNZU3TxmidJOwPzPrNs1hURzJ14pEcIuPh/sfV77/TmJDAjSe7zU8C8/g9gsUadaVYyg
         4AvvVKmYbh9EXCCQNrv+YfL0FQGqaZJqjFHbPLVNXefr5LJA00rvZIKPg1D6wFA2qH07
         S3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=fs+nly2CqDJY2F03DH2S4onxLharejPukjuN2a0s++k=;
        b=qD8kg/CfBQNQKOYpci6DE4xBdvL4Ho59kdU4BddT2sqnblFpSnOtmfJ5LjesVGJiZo
         Y44jQcrz2i4oOpKDcjwE0Y9nFtVp6//QjFdYmjCP4AZ/qRaANf0ZQ5Xl+aGM1Q4cC1ER
         c/RJVqbUI3Rgd+T/Q/znESMmMUIiZ8auE+CG7kXjDBHN3QAHMSKUjjLiPpK6nyXRrFfJ
         LX34WSXH2r/BUU/C8b2S1wkmw0d7YXeMymIx1LK02yu0SFyx8GmAWWmdGvnUybtts/g0
         PWgDaLOXWG9/yhFQb6TX7FunYLtqlORyfxWTNGcZECqHb7PtG6i9U6xWf1ETJUKzjRRO
         9Icg==
X-Gm-Message-State: APjAAAU6HcXksJOzxAUrX95dhlHXoY05VVvFypi9TAXwwY4fwhkhy6x/
        W1D2q36gyZka1NXlnLq16ykwuw==
X-Google-Smtp-Source: APXvYqxgSwaipvyNNYGbOgoKTx3/dcZraYFCAkDEUKEpgskncaj/x86AyejV/paA8RMTb+D5/LZPNw==
X-Received: by 2002:a5e:8209:: with SMTP id l9mr18130595iom.303.1561411420072;
        Mon, 24 Jun 2019 14:23:40 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id p25sm14832445iol.48.2019.06.24.14.23.39
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 24 Jun 2019 14:23:39 -0700 (PDT)
Date:   Mon, 24 Jun 2019 14:23:39 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Yash Shah <yash.shah@sifive.com>
cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        sachin.ghadi@sifive.com
Subject: Re: [PATCH] riscv: dts: Re-organize SPI DT nodes
In-Reply-To: <1561375453-3135-1-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1906241421550.22820@viisi.sifive.com>
References: <1561375453-3135-1-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jun 2019, Yash Shah wrote:

> As per the General convention, define only device DT node in SOC DTSi
> file with status = "disabled" and enable device in Board DTS file with
> status = "okay"
> 
> Reported-by: Anup Patel <anup@brainfault.org>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

This is a good start, but should also cover the other I/O devices in the 
chip DT file.  The mandatory internal devices, like the PRCI and PLIC, can 
stay the way they are.


- Paul
