Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 372D521042
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 23:51:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726833AbfEPVvK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 17:51:10 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:43146 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726677AbfEPVvK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 17:51:10 -0400
Received: by mail-lj1-f196.google.com with SMTP id z5so4452400lji.10
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 14:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rQ486v7/+lFC+0C10/1HSU/dAUcUYwocGLqU5d/PNiE=;
        b=VZjhIAPa7wz0aagS0zRQq87ux8qNQnOd/eEqJ3whEmgJH9V3r2MCHmqkfSn6wkShgi
         blx8XQcNi/K2mQUkcBq3S/OjrcDOnWEAvhCjK2UFAEooDhnk9dSWCaSufQC/i+qU0usv
         YF3Fka6CWTe3GwACK6y8fuK89WpSwGsnHeGgp1MYMLMlwVN+A1/b4DxAR18H3NNDyacY
         WXJGtcBr4nhNEugSl/IzuI33lXhFS8pp3MYsPiV3drBVn5pN4kfsiJpomUc1jy/gFCCV
         KmtT9hAY7If0VQKCX3sjq+eCOpCZLJ9HdAGAgQUIBmJr3DuTNcS1o+IUlhrIaDm4Smwz
         kVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rQ486v7/+lFC+0C10/1HSU/dAUcUYwocGLqU5d/PNiE=;
        b=plzc5RuTy9p0j3v91UaCaZIR/GIdaiCRKJfOfdVZ7NyVg81qjFzcmKSfD+ASQ3WXth
         BZy7nnWFWki8y4bA0JDSVQWWNe2OJK4B4HMrkxZeGFS4H5rLUEKLOxprxRAU3RhZBNTF
         /aLHjyNZLihfpKUnh6RWciDTNzEViO25JVxOSEIYWFzLgXMMW07nKXS3ynJUMJz9lQt6
         XPlqxBVnAGlbn/7AGqf6BO7dlLlgXRv8JmiaUyfGOrJapQ+XwnIZQdmVNxlC14nG5/a7
         gtsFmw38in1qqOjrUczHKEo4gu99fn2rIgSpfSv7isVnhsi6PUe0/pWrDYvySvZx6nTd
         ZLQw==
X-Gm-Message-State: APjAAAW4ogDyhVCEUtCU1/X2G73ha+BXu5uZ6cFaQ7djJ1IpKtLFDZ2b
        UQ8KhQAqTnye2jqeYnsdgoMPbg==
X-Google-Smtp-Source: APXvYqyoR03Ehfj3ojjApBgIzWWuU5NWZW4AT5OOLTz6COtQltQch4b5sqKTVODUFWGIgXoKEeSxzQ==
X-Received: by 2002:a2e:97cf:: with SMTP id m15mr9579164ljj.135.1558043468356;
        Thu, 16 May 2019 14:51:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
        by smtp.gmail.com with ESMTPSA id l76sm1171256lfe.77.2019.05.16.14.51.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 May 2019 14:51:06 -0700 (PDT)
Date:   Thu, 16 May 2019 14:43:41 -0700
From:   Olof Johansson <olof@lixom.net>
To:     Baolin Wang <baolin.wang@linaro.org>
Cc:     arnd@arndb.de, robh+dt@kernel.org, mark.rutland@arm.com,
        arm@kernel.org, linux-arm-kernel@lists.infradead.org,
        orsonzhai@gmail.com, zhang.lyra@gmail.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: sprd: Add clock properties for serial devices
Message-ID: <20190516214341.2qxtmg4turuuozkn@localhost>
References: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 10, 2019 at 03:22:50PM +0800, Baolin Wang wrote:
> We've introduced power management logics for the Spreadtrum serial
> controller by commit 062ec2774c8a ("serial: sprd: Add power management
> for the Spreadtrum serial controller"), thus add related clock properties
> to support this feature.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Applied to arm/late.


-Olof
