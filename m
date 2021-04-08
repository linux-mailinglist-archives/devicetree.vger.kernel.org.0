Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5580635904C
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 01:28:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232735AbhDHX2a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 19:28:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232426AbhDHX2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 19:28:30 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54B13C061760
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 16:28:18 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id l14so1383335ljb.1
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 16:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2MEREbouSsOuRPbKttfWRgrK1cYOjat2yvXqYJTFkgo=;
        b=wlYGXg66P5BevvpLfZbVgbO8mhMZfhA5qOzQGWSDWLCoGiufYWo4awl+rbNlts+TNP
         UlRHP0HfKUiBznMBZL+AZfN5FjsokssNlJJdJ6zOo0tD2IJyleWF2P0qUyfTdf/cSIzD
         q6hS/j92xF5NuEkk4kXRN5exLKFUHNA9t60Ihoj5UDjiNQVo4FYHAOZj/qQBo8UP8aX6
         8OcD6FUmdFVhOdYRRD6xjp1zUDqHPlfJFyFdbvRPwuYM8eVMCUzTsxVlJn3XZf6NL4N9
         qQfDnpm6iCl6qgiW1auw+Sqx0qVvc6DCJ47bnbIJTyLpz/BOrqirE+YMGkWtH7l4U03c
         Bhtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2MEREbouSsOuRPbKttfWRgrK1cYOjat2yvXqYJTFkgo=;
        b=ezu5BOTPTONr8nU2sTHPoT9I3Rt+6NDIJ4/4uWNsXAQQTQubmIpQJtBC3P4k9CHbg3
         P6a/Q6Jzx/Dc3Rnaw89rE4TzMkJSC4hZtXWh46AjpgkpOoGUk2l4mT0lagKbxVlRNbh1
         J57eDUsKPWeKufYphvAkHVWl7xT8kn3lS38+J/xxWlSjBm5gts4XrjG1ZY5RxROiPlK4
         knhh4C9+sqzAOj8/5BgSeTJuNzSLi7YSZCrVLFkLDN8SggCYFC+6vuCCNkcRS82JstlF
         8zG/8iq3g7ldPk5CMs2hW1b5Sw+y4STRJxnAQfqmGSbE0fzmEMFoFxhvET1v8orO2D5A
         C5Nw==
X-Gm-Message-State: AOAM532ZI8pvUAQgpN8xZNks3dgWNL7B++btZkgHxfPzrJFOOe3T3a3V
        BtPoRVh+lfK1E92eBU5q30pMvjLW5jY5qDHZ6P4ZjA==
X-Google-Smtp-Source: ABdhPJxVh1OLdW/A8ehvTkKkxWgoqpp8Ph+dQF5mtyTwZSHg6ygyxPAMf5CCPO/Xm0i6hAZcrMrSSQgD50PDX+hu90E=
X-Received: by 2002:a2e:9cb:: with SMTP id 194mr7626121ljj.438.1617924496736;
 Thu, 08 Apr 2021 16:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210317134904.80737-1-sebastian.reichel@collabora.com> <20210317134904.80737-36-sebastian.reichel@collabora.com>
In-Reply-To: <20210317134904.80737-36-sebastian.reichel@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Apr 2021 01:28:05 +0200
Message-ID: <CACRpkdZerDHY0EsZxqadbbWaCCjw7nkOE8VOGPhoL-Rjwp4Bhg@mail.gmail.com>
Subject: Re: [PATCHv2 35/38] dt-bindings: power: supply: ab8500: Convert to DT
 schema format
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 17, 2021 at 2:51 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Convert the binding to DT schema format.
>
> Note: The battery node does not have a compatible value and needs
> to be described from the binding file for the PMIC. That has not
> yet been converted, so I kept the information in plaintext for now.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Thanks for doing this Sebastian:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Long term I want to get rid of the "charging algorithm" device node,
as can be easily seen that is not a real hardware device but just
some mockery to get a platform device up and probed. It is actually
a library. But for now we need to keep it around.

Yours,
Linus Walleij
