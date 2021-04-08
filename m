Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2774A357D1E
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 09:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbhDHHRv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 03:17:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhDHHRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 03:17:50 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B01EC061761
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 00:17:40 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id n8so2293500lfh.1
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 00:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sHOGEjU+QLVjkfYh4MtLWCK0GiBMyL2W88ovw24/jfA=;
        b=gXuFmlNM9xl944esT8i2XnfB9JiY8FYyB6YskSzLyJ6lyGvcA3bPhFcrkzTmoGe7po
         waUk8v1uNDTV5G5eoM08eLO7/e1QfiqJO8tw844UnaYB2V+AUPjLNXkC1uCsXK1vMhQ1
         e6pe+b5NY2jgcavGb0lw+T1XVbICvPWRkhQUt6ZkCTGJpYYoOeG6lYmvilZD6itU3neF
         E9wqPUspyFRujMIMDB/Xa/01HZptZFGt/6rz0UYvLT7ExkRLQGPZg7CwJrezsZlOmMvG
         v9NlkVuuv21IeZxeXj3a6+MA/cRdG4rNQxqy3rXg93slB/0ezzEwmdlnC/wFf/sV3TzD
         S+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sHOGEjU+QLVjkfYh4MtLWCK0GiBMyL2W88ovw24/jfA=;
        b=PlobU+CHtNzRlmHcnd/G/iTuPfIhylRvCU0mq7PwEhjMWTyBRnQznEnUCe8SJwYQG8
         O0tynRVwkCMM2+n56VXcgYLg/1NRCE+JwT+DL5Jut0EKOVPEuzz2DfTfuevNKDnwRG0z
         FXfpZkCTlPay3dyI217nqIG1+MOdd37LXo/3tYrDQNkmnUc9t4E2YkQSEJ86U9tHUy5h
         teN3ZqklBBl/RbcMb0lEvKcScqdKhDyjTvCe3Grf2tkVmBseSf0CKOj8I8wrVdqVZkTV
         BV59dNdCuWBG7hk+FKW1Tp5JBZmlWrvQlCTMLbB1WeeL+s7lyA954pOjElDovNr+ZK5W
         Q1ng==
X-Gm-Message-State: AOAM531OHPdbL6J7Ls1os9PPGJTu3J9iS+u/DxoulWGgKtVNNI0j2bMS
        qN1PdVxOBs7MIjdS1ZC/Xyx3RUSZ2M5rJEVJ91SM9A==
X-Google-Smtp-Source: ABdhPJzdi9hUTmmsqrF4d30Yw3Gyu85aIWTE4jgQW4GSlImk4y1s49OjI4+qHSlzhnvFuEHutjj5IlrSxC7oMLPG3cc=
X-Received: by 2002:a05:6512:c0b:: with SMTP id z11mr5351095lfu.586.1617866258558;
 Thu, 08 Apr 2021 00:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210405200259.23525-1-petr.vorel@gmail.com> <20210405225222.GD904837@yoga>
In-Reply-To: <20210405225222.GD904837@yoga>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 8 Apr 2021 09:17:27 +0200
Message-ID: <CACRpkdZQ8qiqFPa0X8deVjZ7nLn_E6s8fmJdr5Ji8AuyJms1ug@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8994: Reserve gpio ranges
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Petr Vorel <petr.vorel@gmail.com>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ricardo Ribalda <ribalda@kernel.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 6, 2021 at 12:52 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
> On Mon 05 Apr 15:02 CDT 2021, Petr Vorel wrote:

> > Simple testing with /sys/class/gpio/export showed that 85-88.
> > 3 disables UART. I expect 0-2 are also reserved as on other msm8998.
> >
>
> Are you saying that once you export these gpios the uart stops working?

That might be a Fixes: but certainly not a regression.

Using GPIO sysfs access is dangerous and if someone enables it into
their kernel (which requires setting CONFIG_EXPERT) they are
certainly aware that they are taking a risk. (Same goes for using
the character device from userspace.)

Yours,
Linus Walleij
