Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D29A6375A70
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 20:52:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233669AbhEFSxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 14:53:37 -0400
Received: from mail.kernel.org ([198.145.29.99]:54878 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229622AbhEFSxg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 6 May 2021 14:53:36 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 081D160FF2;
        Thu,  6 May 2021 18:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620327158;
        bh=yiVGmX4sP7Bfubik8i5v4TvkRUWih83CNcAAuSpmeIY=;
        h=From:Date:Subject:To:From;
        b=Ft5bDWsX+Wicvrl3xl0mczEhOkGBWDZeJkrmGCZnFcSK2T25FX41/J6VKTvtNFi7j
         jg3TOcF/jwNOS98NPNwXk6sf3wAz1+ifcgzysKkWue0G/IiPtG3qAiB+uHdOdiTgsy
         g2CrRg5jpmrMCAOCA9cAXkfsUkmRo0IAiG1NoTn4FhFOxg/vZosDBb+vyd0njBXdA9
         A/FOgj0niAnNkUSYmG6DfRHXSVV1/H4V0CabZB/StZPODyk0ndlnalvJvu1b6oGG82
         BDoDCNlqg2OXQ+s/NGScJCXC9vwHhRt7dhnJA5KIQPm6wGibNutC+tvOg2rAQeIHqZ
         son6OwT0BtThg==
Received: by mail-ed1-f41.google.com with SMTP id y26so7361320eds.4;
        Thu, 06 May 2021 11:52:37 -0700 (PDT)
X-Gm-Message-State: AOAM532o90tNabM45+hxn6JK0kcbwJQXSIXOdZAkkMcDfwwAOxfddU3Z
        UfEu/nLJjBL1leIsSsFDIdnrcUY5Onjt7HYISg==
X-Google-Smtp-Source: ABdhPJwJbplGi60+V68b/Z0G+8R1rzJr57+5JOgDUz51QLzt5OYkPNBM6yML/W1PZqeMFKpev6nxf6BvDwhPeGdNpG0=
X-Received: by 2002:a05:6402:84b:: with SMTP id b11mr7014866edz.289.1620327156464;
 Thu, 06 May 2021 11:52:36 -0700 (PDT)
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 6 May 2021 13:52:25 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ3tThskW5birkReLo10K7+YrkBr0BAwOTx+GrnrW3QTA@mail.gmail.com>
Message-ID: <CAL_JsqJ3tThskW5birkReLo10K7+YrkBr0BAwOTx+GrnrW3QTA@mail.gmail.com>
Subject: [ANNOUNCE] dtschema 2021.5 release
To:     devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I don't normally announce releases, but I've tagged a new dtschema
release. There's exactly one new feature in this release: improved
warning messages for binding schema warnings.

The default error messages come from the jsonschema module. For
anything beyond simple errors, figuring out where in the meta-schemas
the error came from and how the schema needs to be changed are not
obvious. This should now be much better as the nearest 'description'
in the meta-schema and the '$id' of the failing meta-schema will be
printed. I've added some descriptions which cover the most common
cases. I'm sure there's still more descriptions to add, so let me know
or send me patches.

The release is available on PyPI: https://pypi.org/project/dtschema/

Rob
