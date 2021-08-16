Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D98513ECF2D
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 09:14:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234303AbhHPHPF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 03:15:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234035AbhHPHPD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 03:15:03 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB317C061764
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 00:14:32 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id l7-20020a1c2507000000b002e6be5d86b3so7522749wml.3
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 00:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=E7eQnXnZH7iFuJ3XmJwQ4GomWFlgLsrkSimeTQa7III=;
        b=A8J3bXdYUMLxQSgsMfUpB3y0Zk4iH5w0w14a1DfTpaGhQVPs+eNwxCIh1nw7RDGDkw
         0oSTJeHIQ8v6vBilBtp7ItLioFGKkKwPUky9Vd5VMJFAqyI8+WCUqPpa7P4Z1CW7tWMr
         N/GuFBju1AcjJL3fs1v6ExN5c9aOqQNC+/e44wWzyLt6kibwDzVImpjoQpWdmjEUEqBs
         auNQtZF0CdCTOAjcIzNhNrej+wrpOPoD2FNBDZypBPSERSaLJNdMUsjeLyV4HSvbSJHI
         LElI7iDutGF4lWg30JbkeONwR/og5GuM9PN3R2Xujwm+i+XzYESZdRF6VlPYGQVh2bJO
         8Oww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=E7eQnXnZH7iFuJ3XmJwQ4GomWFlgLsrkSimeTQa7III=;
        b=ixi8qPDojZUMPXqlB5GqVKdewSZp/wp8OR5uOVZPPGXEH0uldwta5Fj2vB5XPhigUw
         WWovp4smwJiVucoAqhN/F7KgiiojKuwLsJrQ+FRrec8A3bIhZQMe0HN3NXPA4EdNyZES
         Kb0og7VsQUJvWTIIJEYAwbeoVTWmVr3I3GE/CCqtPGCb50wOujtp/RcDOqsgbL/HhHnX
         mnYsX0yzuOB2mGl4pCQnhwGjRBDBvSkSa0B21Q/BfXp4IzE+PUKlQMU1o5Xf5/1XVnIk
         808M3TZOp5exrEjHTslMSapplk736ws5AwQAb94Z875W4mEWXGU+LqnSz1DsBXFHwTHm
         DT3g==
X-Gm-Message-State: AOAM530Hepl3tmbm9IIhrhyQ5Fflb0C0WOtxmEXGHVrfJNML/TU/AVlI
        Qe69fZc7EEt244m/OK6u7tbYtA==
X-Google-Smtp-Source: ABdhPJzYC526t8f315NcpYgoC4MkUwm3UII0piSXQ/CWMVdXxYhy/wvTnvlU4iQOoZBr5WpNIB3lHA==
X-Received: by 2002:a05:600c:a49:: with SMTP id c9mr13424130wmq.159.1629098071223;
        Mon, 16 Aug 2021 00:14:31 -0700 (PDT)
Received: from google.com ([2.31.167.59])
        by smtp.gmail.com with ESMTPSA id z19sm10760853wma.0.2021.08.16.00.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 00:14:30 -0700 (PDT)
Date:   Mon, 16 Aug 2021 08:14:32 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Min Li <min.li.xe@renesas.com>
Cc:     "sameo@linux.intel.com" <sameo@linux.intel.com>,
        "grant.likely@linaro.org" <grant.likely@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH mfd v3] mfd: Add Renesas Synchronization Management Unit
 (SMU) support
Message-ID: <YRoQWCAWC8R27/XG@google.com>
References: <1624034232-7952-1-git-send-email-min.li.xe@renesas.com>
 <OS3PR01MB659329DB91410939ABEB5621BAF99@OS3PR01MB6593.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <OS3PR01MB659329DB91410939ABEB5621BAF99@OS3PR01MB6593.jpnprd01.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 12 Aug 2021, Min Li wrote:

> Hi Lee
> 
> This is Min again. Any chance that you can review this patch next week?

I applied it on the 13th July.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
