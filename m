Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7C6B0B1B
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 11:18:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730631AbfILJSs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 05:18:48 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:37765 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730458AbfILJSr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Sep 2019 05:18:47 -0400
Received: by mail-lf1-f68.google.com with SMTP id w67so18717730lff.4
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2019 02:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h+78ps/YcRgQREC8bdm59/QXTeZLeIK2n4ix1Zc6YuE=;
        b=ltewyL2WgM1Du8dsV1BulMpBXfyc5iBPw/OicmEDuWpykUKquvS58FZyFlFBoWGtYE
         DKivTxiSwd/VoeS716Qu+MOJ/knvInl1KdWOq2lle4uy/NNshh9dxaOSW0ho5cGc/YIS
         9H3XI58bOMEFypzNTyT3bsNgLV9SmSW9bSRXPPFNUteYYdEH4vptUz9AKEiBCLeiY/j8
         odpcJif9v89xjj7AQ8suKy+VPNdET4YNK6pP7LrzIIvnY88gZGF+YyXjETcPUHcDjk7r
         YEoIXw2SKp+KmhwxnbZtXq6Md2o8+wF3kOx6YoT9qF7GqajMiozNqKiwjeZyFLh5ko7z
         V/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h+78ps/YcRgQREC8bdm59/QXTeZLeIK2n4ix1Zc6YuE=;
        b=oAKoYqVw/vk/kGuiiyQO7BHJXR9UPHxAO8p+EPtV0nfCa+Wyx5SX+vhDgxefTgg+8a
         NEZ5ZvPZ03m5RkQ1GU5Kf28sYboHeG4u1WG4r6EhxusDLUglHvD0FRPzvODKSK0jnXaH
         S94pQaFCdW0qI7zFA9A24B8NTC3nS3ecDcb7j9PNoELh+KuYOvD0Im5SvxcGWF7iuPi8
         YBJwyBA4RuC6hFVJJ9se8F/l8Gxiaj6I38KsLmHjFrwGTnjese/yj8U3QwDWOHS3pVQx
         TpEdSYLQAf3aQ6kYQm8DczDgaJAw4pYjDjlnhzNQIRAcUgUa/j89so+a9PuYu7A4/Fcc
         /9SQ==
X-Gm-Message-State: APjAAAXXQ6PCaIaKzlgpY5HJ9Hz4EJbAUGI4jcWSkxMukYVoCKIffJCP
        1HDDOpliXAnX+ng9R5R7Z1bAzCGL5kMm6hDrX8fA1A==
X-Google-Smtp-Source: APXvYqw99POSQQmybjyQTzX+pmWjYXGnqHl/f+z6QV0Owgv09UDDxoCLWxb8BQV1wLRbkNBmLMTRSaxBTJicMRvjXTw=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr27498145lfp.61.1568279925827;
 Thu, 12 Sep 2019 02:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190910152855.111588-1-paul.kocialkowski@bootlin.com>
In-Reply-To: <20190910152855.111588-1-paul.kocialkowski@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 12 Sep 2019 10:18:34 +0100
Message-ID: <CACRpkdYGCWc007s-9_jvX2aKuZv8fTfV2UX-qBBi7WtePABMVg@mail.gmail.com>
Subject: Re: [PATCH 1/3] gpio: syscon: Add support for a custom get operation
To:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 10, 2019 at 4:29 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:

> Some drivers might need a custom get operation to match custom
> behavior implemented in the set operation.
>
> Add plumbing for supporting that.
>
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Looks OK but as noted in the other patch: we are accumulating stuff
in this driver, possibly this syscon part should just be a library
used by individual drivers that can be switched on/off with Kconfig.

Yours,
Linus Walleij
